import 'package:farespy/Models/address.dart';
import 'package:flutter/material.dart';

class AppData extends ChangeNotifier{
  late Address pickUpLocation;

  void updatePickUpLocationAddress(Address pickUpAddress){
    pickUpLocation = pickUpAddress;
    notifyListeners();
  }
  
}