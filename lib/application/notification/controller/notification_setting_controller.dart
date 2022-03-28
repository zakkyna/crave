import 'package:crave_app/domain/settings/setting_data.dart';
import 'package:get/get.dart';

class NotificationSettingController extends GetxController {
  final pushNotification = true.obs;
  final chatTimerNotification = true.obs;
  final likeNotification = true.obs;
  final newMessageAlert = true.obs;

  loadSettingData(SettingData settingData) {
    pushNotification.value = settingData.pushNotification;
    chatTimerNotification.value = settingData.chatTimerNotification;
    likeNotification.value = settingData.likeNotification;
    newMessageAlert.value = settingData.newMessageAlert;
    update();
  }

  changePushNotification(bool value) {
    pushNotification.value = value;
    update();
  }

  changeChatTimerNotification(bool value) {
    chatTimerNotification.value = value;
    update();
  }

  changeLikeNotification(bool value) {
    likeNotification.value = value;
    update();
  }

  changeNewMessageAlert(bool value) {
    newMessageAlert.value = value;
    update();
  }
}
