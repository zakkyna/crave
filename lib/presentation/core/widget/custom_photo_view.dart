import 'package:crave_app/domain/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

class CustomPhotoViewGalley extends StatelessWidget {
  final List<ImageProvider> images;
  final String? descriptions;
  final int index;
  final void Function(int)? onPageChanged;
  final BoxDecoration? backgroundDecoration;
  final List<String> tags;
  const CustomPhotoViewGalley({
    Key? key,
    required this.images,
    this.index = 0,
    this.onPageChanged,
    this.backgroundDecoration,
    this.descriptions,
    required this.tags,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _pageController = PageController(initialPage: index);
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: PhotoViewGallery.builder(
              scrollPhysics: const BouncingScrollPhysics(),
              builder: (BuildContext context, int index) {
                return PhotoViewGalleryPageOptions(
                  imageProvider: images[index],
                  initialScale: PhotoViewComputedScale.contained * 0.8,
                  heroAttributes: PhotoViewHeroAttributes(
                    tag: tags[index],
                  ),
                );
              },
              itemCount: images.length,
              loadingBuilder: (context, event) => Center(
                child: SizedBox(
                  width: 20.0,
                  height: 20.0,
                  child: CircularProgressIndicator(
                    value: event == null
                        ? 0
                        : event.cumulativeBytesLoaded /
                            (event.expectedTotalBytes ?? 0),
                  ),
                ),
              ),
              backgroundDecoration: backgroundDecoration,
              pageController: _pageController,
              onPageChanged: onPageChanged,
            ),
          ),
          Positioned(
            top: 50,
            right: 10,
            child: IconButton(
              color: Colors.black45,
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.close,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
          Positioned(
            bottom: 50.h,
            left: 30.w,
            right: 30.w,
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 14.h),
              margin: EdgeInsets.all(8.w),
              decoration: BoxDecoration(
                color: Colors.black38,
                borderRadius: BorderRadius.circular(
                  12.r,
                ),
              ),
              child: Text(
                descriptions ?? '',
                style: Styles.sfProDisplay.copyWith(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomPhotoViewSingle extends StatelessWidget {
  final ImageProvider image;
  const CustomPhotoViewSingle({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PhotoView(
            imageProvider: image,
          ),
          Positioned(
            top: 30,
            right: 10,
            child: IconButton(
              color: Colors.black45,
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.close,
                color: Colors.white,
                size: 30,
              ),
            ),
          )
        ],
      ),
    );
  }
}
