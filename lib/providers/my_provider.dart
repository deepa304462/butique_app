import 'package:flutter/material.dart';

class MyModel extends ChangeNotifier {
  bool _myValue = true;

  String _drawingData = "";

  String _drawingHorizontalData = "";

  bool get myValue => _myValue;

  String get drawingData => _drawingData;

  String get drawingHorizontalData => _drawingHorizontalData;


  void updateMyValue(bool newValue) {
    _myValue = newValue;
    notifyListeners();
  }

  void updateDrawing(String newValue,bool isHorizontal) {
    if(isHorizontal){
      _drawingHorizontalData = newValue;
    }else{
      _drawingData = newValue;
    }
  }
}