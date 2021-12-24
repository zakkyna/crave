import 'package:cached_network_image/cached_network_image.dart';
import 'package:crave_app/domain/core/theme/theme.dart';
import 'package:crave_app/presentation/core/widget/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:like_button/like_button.dart';

class ShowEveryOneWidget extends StatelessWidget {
  const ShowEveryOneWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: Dimens.defaultMargin,
          vertical: Dimens.defaultMargin * 0.8),
      child: Stack(
        fit: StackFit.loose,
        children: [
          CachedNetworkImage(
            imageUrl: 'https://placeimg.com/480/600/people',
            imageBuilder: (context, imageProvider) => Container(
              height: 415.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimens.defaultBorderRadius),
                image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
              ),
            ),
            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.error),
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
                      children: [
                        SvgPicture.asset('assets/images/location_icon.svg'),
                        addHorizontalSpace(5),
                        Text(
                          '12 mi Boston VA',
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
                      ],
                    ),
                  ),
                ),
                Expanded(
                    child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          print('Tapped');
                        },
                        child: Container(
                          height: 35.h,
                          width: 35.w,
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
                          child: Icon(
                            Icons.close_rounded,
                            size: 24.sp,
                            color: Colors.grey,
                          ),
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
                          size: 64.r,
                          circleColor: CircleColor(
                              start: Color(0xff00ddff), end: Color(0xff0099cc)),
                          bubblesColor: BubblesColor(
                            dotPrimaryColor: Color(0xff33b5e5),
                            dotSecondaryColor: Color(0xff0099cc),
                          ),
                          likeBuilder: (bool isLiked) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                addHorizontalSpace(1.w),
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
