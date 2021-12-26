import 'package:flutter/material.dart';
import 'package:flutter_native/modules/home/controller/home_controller.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  final HomeController _homeController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 60),
        child: AppBar(
          centerTitle: true,
          title: Text("Native Example"),
        ),
      ),
      body: Obx(() => Center(
            child: SingleChildScrollView(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Battery Level: ${_homeController.batteryLevel.value}"),
                Text("Device Name: ${_homeController.deviceName.value}")
              ],
            )),
          )),
    );
  }
}
