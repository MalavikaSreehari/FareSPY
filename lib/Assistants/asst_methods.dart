// import 'dart:js';

// import 'package:farespy/Assistants/req_asst.dart';
// import 'package:farespy/DataHandler/app_data.dart';
// import 'package:farespy/Models/address.dart';
// import 'package:farespy/global/config_maps.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:provider/provider.dart';

// class AssistantMethods{
//   static Future<String> searchCoordinateAddress(Position position, context) async{

//     String placeAddress="";
//     String url = "https://maps.googleapis.com/maps/api/geocode/json?latlng=${position.latitude},${position.longitude}&key=$mapKey";

//     var response = await RequestAssistant.getRequest(url);

//     if(response!="failed"){
//       placeAddress = response["results"][0]["formatted_address"];

//       Address userPickupAddress = Address();
//       userPickupAddress.latitude = position.latitude;
//       userPickupAddress.longitude = position.longitude;
//       userPickupAddress.placeName = placeAddress;

//       Provider.of<AppData>(context, listen: false).updatePickUpLocationAddress(userPickupAddress);
//     }

//     return placeAddress;
//   }
// }