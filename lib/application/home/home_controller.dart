import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class HomeController extends GetxController {
  final selectedTabIndex = 0.obs;
  final pageController = PageController();
}
