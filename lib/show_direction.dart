import 'package:farespy/Assistants/maps_utils.dart';
import 'package:farespy/global/config_maps.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_place/google_place.dart';


class ShowDirection extends StatefulWidget {
  ShowDirection({super.key, this.startPoint, this.endPoint});

  final DetailsResult? startPoint;
  final DetailsResult? endPoint;

  

  @override
  State<ShowDirection> createState() => _ShowDirectionState();
}

class _ShowDirectionState extends State<ShowDirection> {
  Map<PolylineId, Polyline> polylines = {};
  List<LatLng> polylineCoordinates = [];
  PolylinePoints polylinePoints = PolylinePoints();
  late CameraPosition _initialPosition;

  _addPolyLine() {
    PolylineId id = PolylineId("poly");
    Polyline polyline = Polyline(
        polylineId: id, color: Colors.green, points: polylineCoordinates,
        width: 4);
    polylines[id] = polyline;
    setState(() {});
  }

  _getPolyline() async {
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
        placesKey,
        PointLatLng(widget.startPoint!.geometry!.location!.lat!, widget.startPoint!.geometry!.location!.lng!),
        PointLatLng(widget.endPoint!.geometry!.location!.lat!, widget.endPoint!.geometry!.location!.lng!),
        travelMode: TravelMode.driving,
        );
    if (result.points.isNotEmpty) {
      result.points.forEach((PointLatLng point) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      });
    }
    _addPolyLine();
  }
  
  @override
  void initState() {
    super.initState();
    _initialPosition = CameraPosition(
        target: LatLng(widget.startPoint!.geometry!.location!.lat!,
            widget.startPoint!.geometry!.location!.lng!),
        zoom: 14.4746);
  }

  Widget build(BuildContext context) {
    Set<Marker> _markers = {
    Marker(markerId: MarkerId('start'),
    position: LatLng(widget.startPoint!.geometry!.location!.lat!, widget.startPoint!.geometry!.location!.lng!)),
    Marker(markerId: MarkerId('end'),
    position: LatLng(widget.endPoint!.geometry!.location!.lat!, widget.endPoint!.geometry!.location!.lng!))
  };
    return Scaffold(
      body: GoogleMap(initialCameraPosition: _initialPosition,
      polylines: Set<Polyline>.of(polylines.values),
      zoomControlsEnabled: false,
      markers: Set.from(_markers),
      onMapCreated: (GoogleMapController controller) {
                     
                      Future.delayed(
                          Duration(milliseconds: 2000),
                          () {controller.animateCamera(
                              CameraUpdate.newLatLngBounds(
                                  MapUtils.boundsFromLatLngList(
                                      _markers.map((loc) => loc.position).toList()),
                                  1));
                                  _getPolyline();
                                  },
                      );
                    },),
    );
  }
}
