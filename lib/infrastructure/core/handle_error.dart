import 'package:crave_app/domain/core/interfaces/i_handle_error.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IHandleError)
class HandleError implements IHandleError {
  @override
  void showError(String message) {
    if (Get.isSnackbarOpen) {
      Get.closeAllSnackbars();
    }
    Get.snackbar('Sorry', message);
  }
}
