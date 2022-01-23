import 'package:crave_app/domain/post/post_stream.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class HomeController extends GetxController {
  final selectedTabIndex = 0.obs;
  final pageController = PageController(
    keepPage: true,
  );
  final Rxn<PostStream> postStream = Rxn<PostStream>();
  final RxDouble radius = 100.0.obs;
  final RxInt whoLikesMePage = 1.obs;

  setWhoLikesMePage(int page) {
    whoLikesMePage.value = page;
  }
}
