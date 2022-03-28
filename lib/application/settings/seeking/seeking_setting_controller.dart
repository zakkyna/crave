import 'package:get/get.dart';

class SeekingSettingController extends GetxController {
  final RxList<int> seekingList = <int>[].obs;

  loadSeeking(List<int> seeking) {
    seekingList.value = seeking;
    update();
  }

  toggleList(int value) {
    if (seekingList.contains(value)) {
      seekingList.remove(value);
    } else {
      seekingList.add(value);
    }
    update();
  }
}
