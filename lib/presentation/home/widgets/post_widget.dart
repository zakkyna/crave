import 'package:cached_network_image/cached_network_image.dart';
import 'package:crave_app/application/post/post_bloc.dart';
import 'package:crave_app/domain/core/entity/coordinate.dart';
import 'package:crave_app/domain/core/theme/theme.dart';
import 'package:crave_app/domain/post/post.dart';
import 'package:crave_app/domain/profile/profile.dart';
import 'package:crave_app/presentation/core/widget/custom_photo_view.dart';
import 'package:crave_app/presentation/core/widget/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:like_button/like_button.dart';

class PostWidget extends StatelessWidget {
  final Post post;
  final Profile currentProfile;
  final Coordinate coordinate;
  final bool isWhoLikesMe;

  const PostWidget({
    Key? key,
    required this.post,
    required this.currentProfile,
    required this.coordinate,
    required this.isWhoLikesMe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _bloc = context.read<PostBloc>();

    Future<bool> onLikeButtonTapped(bool isLiked) async {
      _bloc.add(PostEvent.likePost(post.uid, isLiked));
      return isLiked;
    }

    String genderMap(int genderId) {
      switch (genderId) {
        case 1:
          return 'MALE';
        case 2:
          return 'FEMALE';
        default:
          return 'OTHER';
      }
    }

    return Column(
      children: [
        AddVerticalSpace(8.h),
        SizedBox(
          height: 280.h,
          child: Row(
            children: [
              post.photos.isEmpty
                  ? Container(
                      height: 280.h,
                      width: 130.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8.r),
                          bottomRight: Radius.circular(8.r),
                        ),
                        color: const Color(0xFFEDEDED),
                      ),
                      child: const Center(
                        child: Text(
                          'No Photo',
                        ),
                      ),
                    )
                  : GestureDetector(
                      onTap: post.photos.isEmpty
                          ? null
                          : () {
                              Get.to(
                                () => CustomPhotoViewGalley(
                                  images: post.photos
                                      .map((photo) =>
                                          CachedNetworkImageProvider(photo))
                                      .toList(),
                                  index: 0,
                                  descriptions: post.bio,
                                  tags: post.photos
                                      .map((photo) => photo.hashCode.toString())
                                      .toList(),
                                ),
                              );
                            },
                      child: SizedBox(
                        height: 280.h,
                        width: 130.w,
                        child: Hero(
                          tag: post.photos.first.hashCode.toString(),
                          child: CachedNetworkImage(
                            imageUrl: post.photos.first,
                            imageBuilder: (context, imageProvider) => Container(
                              height: 280.h,
                              width: 120.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(8.r),
                                  bottomRight: Radius.circular(8.r),
                                ),
                                image: DecorationImage(
                                  image: imageProvider,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            placeholder: (context, url) => const Center(
                                child: CircularProgressIndicator()),
                            errorWidget: (context, url, error) => const Center(
                              child: Icon(Icons.error),
                            ),
                          ),
                        ),
                      ),
                    ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 8.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              genderMap(post.genderId),
                              style: Styles.sfProDisplay.copyWith(
                                color: AppColors.mainColor,
                              ),
                            ),
                            AddVerticalSpace(10.h),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  'assets/images/location_icon.svg',
                                  color: AppColors.mainColor,
                                ),
                                AddHorizontalSpace(5.w),
                                Expanded(
                                  child: Text(
                                    '${post.distanceInMiles(coordinate.toGeopoint())} - ${post.city ?? ''}, ${post.state ?? ''}',
                                    style: Styles.sfProDisplay.copyWith(
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            AddVerticalSpace(10.h),
                            Expanded(
                              child: Text(
                                (post.bio ?? '').toUpperCase(),
                                style: Styles.sfProDisplay.copyWith(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xFF717174),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RawMaterialButton(
                              onPressed: () =>
                                  _bloc.add(PostEvent.dismissPost(post.uid)),
                              elevation: 0,
                              fillColor: const Color(0xFFEDEDED),
                              child: Icon(
                                Icons.close_rounded,
                                size: 30.sp,
                                color: const Color(0xFFBDBDBD),
                              ),
                              constraints: BoxConstraints.tightFor(
                                width: 60.r,
                                height: 60.r,
                              ),
                              padding: const EdgeInsets.all(8.0),
                              shape: const CircleBorder(
                                side: BorderSide.none,
                              ),
                            ),
                            if (currentProfile.isEnableInstantChat == true &&
                                !isWhoLikesMe)
                              RawMaterialButton(
                                onPressed: () {
                                  _bloc.add(PostEvent.createInstantChat(post));
                                },
                                elevation: 0,
                                fillColor: const Color(0xFF5F009D),
                                child: SvgPicture.asset(
                                  'assets/icon/instant_message_icon.svg',
                                  color: Colors.white,
                                ),
                                constraints: BoxConstraints.tightFor(
                                  width: 60.r,
                                  height: 60.r,
                                ),
                                padding: const EdgeInsets.all(8.0),
                                shape: const CircleBorder(
                                  side: BorderSide.none,
                                ),
                              ),
                            isWhoLikesMe
                                ? RawMaterialButton(
                                    onPressed: () {
                                      _bloc.add(PostEvent.createRoom(post));
                                    },
                                    elevation: 0,
                                    fillColor: const Color(0xFFEDEDED),
                                    child: SvgPicture.asset(
                                      'assets/icon/home_chat_icon.svg',
                                      color: AppColors.mainColor,
                                    ),
                                    constraints: BoxConstraints.tightFor(
                                      width: 60.r,
                                      height: 60.r,
                                    ),
                                    padding: const EdgeInsets.all(8.0),
                                    shape: const CircleBorder(
                                      side: BorderSide.none,
                                    ),
                                  )
                                : LikeButton(
                                    isLiked:
                                        post.isLikedByMe(currentProfile.uid),
                                    size: 60.r,
                                    circleColor: const CircleColor(
                                        start: Color(0xff00ddff),
                                        end: Color(0xff0099cc)),
                                    bubblesColor: const BubblesColor(
                                      dotPrimaryColor: Color(0xff33b5e5),
                                      dotSecondaryColor: Color(0xff0099cc),
                                    ),
                                    onTap: onLikeButtonTapped,
                                    animationDuration:
                                        const Duration(milliseconds: 500),
                                    likeBuilder: (bool isLiked) {
                                      return Container(
                                        height: 64.h,
                                        width: 64.w,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: isLiked
                                              ? AppColors.mainColor
                                              : const Color(0xFFEDEDED),
                                        ),
                                        child: Icon(
                                          Icons.favorite,
                                          color: isLiked
                                              ? Colors.white
                                              : const Color(0xFFBDBDBD),
                                          size: 35.r,
                                        ),
                                      );
                                    },
                                  ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Divider(
          height: 32.h,
        )
      ],
    );
  }
}
