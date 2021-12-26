import 'package:get/get.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeController extends GetxController {
  static const platform = MethodChannel('samples.flutter.dev/native');
  var batteryLevel = "".obs;
  var deviceName = "".obs;
  @override
  void onInit() async {
    await _getDeviceName();
    await _getBatteryLevel();
  }

  Future<void> _getBatteryLevel() async {
    await platform
        .invokeMethod('getBatteryLevel')
        .then((value) => batteryLevel.value = value.toString());
  }

  Future<void> _getDeviceName() async {
    await platform
        .invokeMethod('getDeviceName')
        .then((value) => deviceName.value = value.toString());
  }
}
