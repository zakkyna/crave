import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:crave_app/domain/core/theme/theme.dart';
import 'package:crave_app/presentation/core/widget/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WhoLikesMeWidget extends StatelessWidget {
  const WhoLikesMeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageController = PageController();
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: Dimens.defaultMargin,
          vertical: Dimens.defaultMargin * 0.8),
      child: Stack(
        fit: StackFit.loose,
        children: [
          1 == 1
              ? SizedBox(
                  height: 415.h,
                  width: double.infinity,
                  child: PageView(
                    controller: pageController,
                    children: [
                      CachedNetworkImage(
                        imageUrl:
                            'https://placeimg.com/48${Random().nextInt(9)}/600/people',
                        imageBuilder: (context, imageProvider) => Container(
                          height: 415.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                Dimens.defaultBorderRadius),
                            image: DecorationImage(
                                image: imageProvider, fit: BoxFit.cover),
                          ),
                        ),
                        placeholder: (context, url) =>
                            const Center(child: CircularProgressIndicator()),
                        errorWidget: (context, url, error) => const Center(
                          child: Icon(Icons.error),
                        ),
                      ),
                      CachedNetworkImage(
                        imageUrl:
                            'https://placeimg.com/48${Random().nextInt(9)}/600/people',
                        imageBuilder: (context, imageProvider) => Container(
                          height: 415.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                Dimens.defaultBorderRadius),
                            image: DecorationImage(
                                image: imageProvider, fit: BoxFit.cover),
                          ),
                        ),
                        placeholder: (context, url) =>
                            const Center(child: CircularProgressIndicator()),
                        errorWidget: (context, url, error) => const Center(
                          child: Icon(Icons.error),
                        ),
                      ),
                    ],
                  ),
                )
              : CachedNetworkImage(
                  imageUrl: 'https://placeimg.com/480/600/people',
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SvgPicture.asset(
                                  'assets/images/location_icon.svg'),
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
                        SmoothPageIndicator(
                          controller: pageController,
                          effect: WormEffect(
                            activeDotColor: Colors.white,
                            dotColor: Colors.grey,
                            dotHeight: 8.h,
                            dotWidth: 8.h,
                          ),
                          count: 2,
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
                        child: RawMaterialButton(
                          onPressed: () {},
                          elevation: 2.0,
                          fillColor: Colors.white,
                          child: SvgPicture.asset(
                            'assets/icon/home_chat_icon.svg',
                            width: 32.w,
                          ),
                          padding: EdgeInsets.all(16.r),
                          shape: const CircleBorder(
                            side: BorderSide.none,
                          ),
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
