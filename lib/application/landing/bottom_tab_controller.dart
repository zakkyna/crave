import 'package:get/get.dart';

class BottomTabController extends GetxController {
  RxInt tabIndex = 0.obs;

  // ignore: use_setters_to_change_properties
  void changeTabIndex(int index) {
    tabIndex.value = index;
  }
}
