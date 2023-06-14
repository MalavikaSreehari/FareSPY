import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geodesy/geodesy.dart' as geodesy;

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  Completer<GoogleMapController> _controller = Completer();
  Set<Marker> _markers = {};
  LatLng? _currentLocation;
  LatLng? _previousLocation;
  bool _rideStarted = false;
  double _distance = 0.0;

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  void _startRide() async {
    _rideStarted = true;
    Position position = await GeolocatorPlatform.instance.getCurrentPosition(
      //desiredAccuracy: LocationAccuracy.high,
    );
    setState(() {
      _currentLocation = LatLng(position.latitude, position.longitude);
      _previousLocation = _currentLocation;
      _markers.add(Marker(
        markerId: MarkerId('current_location'),
        position: _currentLocation!,
      ));
    });
  }

  void _stopRide() {
    _rideStarted = false;
    setState(() {
      _currentLocation = null;
      _previousLocation = null;
      _markers.clear();
      _distance = 0.0;
    });
  }

  void _updateLocation() async {
    if (_rideStarted) {
      Position position = await GeolocatorPlatform.instance.getCurrentPosition(
        
        //desiredAccuracy: LocationAccuracy.high,
      );
      setState(() {
        LatLng newLocation = LatLng(position.latitude, position.longitude);
        _markers.removeWhere((marker) => marker.markerId.value == 'current_location');
        _markers.add(Marker(
          markerId: MarkerId('current_location'),
          position: newLocation,
        ));
        _currentLocation = newLocation;

        if (_currentLocation != null && _previousLocation != null) {
          geodesy.Distance distance = geodesy.Distance();
          num distanceInMeters = distance(
            geodesy.LatLng(_previousLocation?.latitude, _previousLocation?.longitude),
            geodesy.LatLng(_currentLocation?.latitude, _currentLocation?.longitude),
          );
          _distance += distanceInMeters / 1000; // Convert meters to kilometers
        }

        _previousLocation = _currentLocation;
      });
    }
  }

  @override
  void initState() {
    _updateLocation();
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Live Location Tracker'),
      ),
      body: Stack(
        children: [
          GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: _currentLocation!,
              //
              //LatLng(DESTINATION_LATITUDE, DESTINATION_LONGITUDE),
              zoom: 14.0,
            ),
            markers: _markers,
          ),
          Positioned(
            bottom: 16.0,
            left: 16.0,
            child: Text(
              'Distance: ${_distance.toStringAsFixed(2)} km',
              style: TextStyle(fontSize: 18.0),
            ),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _rideStarted ? null : _startRide,
            child: Icon(Icons.play_arrow),
          ),
          SizedBox(width: 16.0),
          FloatingActionButton(
            onPressed: _stopRide,
            child: Icon(Icons.stop),
          ),
        ],
      ),
    );
  }
}

const double DESTINATION_LATITUDE = 37.7749; // Destination latitude
const double DESTINATION_LONGITUDE = -122.4194; // Destination longitude
