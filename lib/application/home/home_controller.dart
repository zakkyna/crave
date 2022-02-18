import 'package:crave_app/domain/core/entity/coordinate.dart';
import 'package:crave_app/domain/post/post.dart';
import 'package:crave_app/domain/post/post_stream.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class HomeController extends GetxController {
  final selectedTabIndex = 0.obs;
  final pageController = PageController(
    keepPage: true,
  );
  final Rxn<PostStream> postStream = Rxn<PostStream>();
  final Rxn<Coordinate> coordinate = Rxn<Coordinate>();
  final RxDouble radius = 100.0.obs;
  final RxInt whoLikesMePage = 1.obs;

  final PagingController<int, Post> whoLikesMePagingController =
      PagingController(firstPageKey: 1);

  addWhoLikesMeListener(void Function(int) listener) {
    whoLikesMePagingController.addPageRequestListener(listener);
    //    (pageKey) {
    //   _bloc.add(PostEvent.getWhoLikesMePosts(pageKey));
    // });
  }

  setWhoLikesMePage(int page) {
    whoLikesMePage.value = page;
  }
}
