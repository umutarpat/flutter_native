import 'package:flutter_native/global/bindings/home/home_binding.dart';
import 'package:flutter_native/modules/home/home_view.dart';
import 'package:get/get.dart';

List<GetPage<dynamic>> routes = [
  GetPage(
    name: '/',
    page: () => HomeView(),
    binding: HomeBinding(),
  ),
];
