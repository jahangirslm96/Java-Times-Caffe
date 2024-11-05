import 'package:flutter/material.dart';
import 'package:get/get.dart';


class EventController extends GetxController{

  int _addSubEvent = 0;
  int get addSubEvent=> _addSubEvent;

  void increase(){
    _addSubEvent++;
    update();
  }


  void decrease(){
    _addSubEvent--;
    update();
  }

}