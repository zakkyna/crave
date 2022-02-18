import 'package:cached_network_image/cached_network_image.dart';
import 'package:crave_app/application/post/post_bloc.dart';
import 'package:crave_app/domain/core/entity/coordinate.dart';
import 'package:crave_app/domain/core/theme/theme.dart';
import 'package:crave_app/domain/post/post.dart';
import 'package:crave_app/domain/profile/profile.dart';
import 'package:crave_app/presentation/core/widget/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:like_button/like_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ShowEveryOneWidget extends StatelessWidget {
  final Post post;
  final Profile currentProfile;
  final Coordinate coordinate;
  const ShowEveryOneWidget({
    Key? key,
    required this.post,
    required this.currentProfile,
    required this.coordinate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _bloc = context.read<PostBloc>();
    Future<bool> onLikeButtonTapped(bool isLiked) async {
      _bloc.add(PostEvent.likePost(post.uid, isLiked));
      return isLiked;
    }

    final pageController = PageController();
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: Dimens.defaultMargin,
          vertical: Dimens.defaultMargin * 0.8),
      child: Stack(
        fit: StackFit.loose,
        children: [
          SizedBox(
            height: 415.h,
            width: double.infinity,
            child: PageView(
              controller: pageController,
              children: [
                ...post.photos.map((photo) {
                  return CachedNetworkImage(
                    imageUrl: photo,
                    imageBuilder: (context, imageProvider) => Container(
                      height: 415.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimens.defaultBorderRadius),
                        image: DecorationImage(
                            image: imageProvider, fit: BoxFit.cover),
                      ),
                    ),
                    placeholder: (context, url) =>
                        const Center(child: CircularProgressIndicator()),
                    errorWidget: (context, url, error) => const Center(
                      child: Icon(Icons.error),
                    ),
                  );
                }).toList(),
              ],
            ),
          ),
          SizedBox(
            height: (Get.mediaQuery.size.height * 0.5) + 32.h,
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  height: (Get.mediaQuery.size.height * 0.5) - 32.h,
                  child: Padding(
                    padding: const EdgeInsets.all(Dimens.defaultMargin),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SvgPicture.asset(
                                  'assets/images/location_icon.svg'),
                              AddHorizontalSpace(5),
                              Expanded(
                                child: Text(
                                  '${post.distanceInMiles(coordinate.toGeopoint())} ${post.city ?? ''}, ${post.state ?? ''}',
                                  style: Styles.sfProDisplay.copyWith(
                                    fontSize: 14.sp,
                                    height: 1.4,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                    shadows: <Shadow>[
                                      const Shadow(
                                        offset: Offset(0, 2),
                                        blurRadius: 3.0,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        if (post.photos.length > 1)
                          SmoothPageIndicator(
                            controller: pageController,
                            effect: WormEffect(
                              activeDotColor: Colors.white,
                              dotColor: Colors.grey,
                              dotHeight: 8.h,
                              dotWidth: 8.h,
                            ),
                            count: post.photos.length,
                          ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                    child: Row(
                  children: [
                    Expanded(
                      child: RawMaterialButton(
                        onPressed: () =>
                            _bloc.add(PostEvent.dismissPost(post.uid)),
                        elevation: 2.0,
                        fillColor: Colors.white,
                        child: Icon(
                          Icons.close_rounded,
                          size: 24.sp,
                          color: Colors.grey,
                        ),
                        padding: const EdgeInsets.all(8.0),
                        shape: const CircleBorder(
                          side: BorderSide.none,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 64.h,
                        width: 64.w,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.shadowColor.withOpacity(0.1),
                              spreadRadius: 4,
                              blurRadius: 12,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: LikeButton(
                          isLiked: post.isLikedByMe(currentProfile.uid),
                          size: 64.r,
                          circleColor: const CircleColor(
                              start: Color(0xff00ddff), end: Color(0xff0099cc)),
                          bubblesColor: const BubblesColor(
                            dotPrimaryColor: Color(0xff33b5e5),
                            dotSecondaryColor: Color(0xff0099cc),
                          ),
                          onTap: onLikeButtonTapped,
                          animationDuration: const Duration(milliseconds: 500),
                          likeBuilder: (bool isLiked) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AddHorizontalSpace(1.w),
                                Icon(
                                  Icons.favorite,
                                  color: isLiked
                                      ? AppColors.mainColor
                                      : Colors.grey,
                                  size: 35.r,
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                    Expanded(child: Container()),
                  ],
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
