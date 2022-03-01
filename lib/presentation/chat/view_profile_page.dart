import 'package:cached_network_image/cached_network_image.dart';
import 'package:crave_app/domain/post/post.dart';
import 'package:crave_app/presentation/core/widget/custom_photo_view.dart';
import 'package:flutter/material.dart';

class ViewProfilePage extends StatelessWidget {
  final Post post;
  const ViewProfilePage(this.post, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageController = PageController(initialPage: 0);
    return CustomPhotoViewGalley(
      images:
          post.photos.map((url) => CachedNetworkImageProvider(url)).toList(),
      pageController: pageController,
      descriptions: post.bio,
    );
  }
}
