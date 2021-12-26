import 'package:crave_app/domain/core/theme/theme.dart';
import 'package:crave_app/presentation/core/widget/custom_button.dart';
import 'package:crave_app/presentation/core/widget/spacing.dart';
import 'package:crave_app/presentation/routers/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child:
                Image.asset('assets/images/bottom_bg.png', fit: BoxFit.cover),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                tileMode: TileMode.clamp,
                stops: const [
                  0.1,
                  0.3,
                  0.5,
                  0.65,
                  0.9,
                ],
                colors: [
                  const Color(0xFF9C000A),
                  const Color(0xFF7A0008),
                  const Color(0xFF650206),
                  const Color(0xFF4D0F04),
                  const Color(0xFF1F0500).withOpacity(0.4),
                ],
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                addVerticalSpace(20),
                Center(
                  child: SvgPicture.asset(
                    'assets/images/crave_logo_white.svg',
                  ),
                ),
                addVerticalSpace(80),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    'That\'s the best thing what will happen to you during the next 60 minutes.'
                        .toUpperCase(),
                    style: Styles.normalStyle.copyWith(
                      fontSize: 20,
                      height: 1.3,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SafeArea(
              child: Column(
                children: [
                  CustomButton(
                    margin: const EdgeInsets.symmetric(
                        horizontal: Dimens.defaultMargin),
                    height: 56.h,
                    onPressed: () => Get.toNamed(Routers.auth),
                    color: Colors.white,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset('assets/icon/sign_in_phone_icon.svg'),
                        addHorizontalSpace(5),
                        Text(
                          'Continue with Phone',
                          style: Styles.sfProDisplay.copyWith(
                            color: AppColors.mainColor,
                            fontSize: 18.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                  addVerticalSpace(25.h),
                  CustomButton(
                    margin: const EdgeInsets.symmetric(
                        horizontal: Dimens.defaultMargin),
                    height: 56.h,
                    onPressed: () {},
                    color: Colors.white,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset('assets/icon/sign_in_apple_icon.svg'),
                        addHorizontalSpace(5),
                        Text(
                          'Continue with Apple',
                          style: Styles.sfProDisplay.copyWith(
                            color: Colors.black,
                            fontSize: 18.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                  addVerticalSpace(15.h),
                ],
              ),
            ),
            // child: SafeArea(
            //   child: Row(
            //     children: [
            //       Expanded(
            //         child: Material(
            //           color: Colors.transparent,
            //           child: InkWell(
            //             onTap: () {},
            //             splashColor: Colors.grey,
            //             child: Ink(
            //               padding: const EdgeInsets.all(20),
            //               child: Row(
            //                 mainAxisAlignment: MainAxisAlignment.center,
            //                 children: [
            //                   Text(
            //                     'LOGIN',
            //                     style: Styles.normalStyle.copyWith(
            //                       color: Colors.white,
            //                       fontSize: 18,
            //                     ),
            //                   ),
            //                   SvgPicture.asset('assets/images/next_icon.svg'),
            //                 ],
            //               ),
            //             ),
            //           ),
            //         ),
            //       ),
            //       Container(
            //         width: 1,
            //         height: 40,
            //         color: Colors.white,
            //       ),
            //       Expanded(
            //         child: Material(
            //           color: Colors.transparent,
            //           child: InkWell(
            //             onTap: () {
            //               Get.toNamed(Routers.intro);
            //             },
            //             splashColor: Colors.grey,
            //             child: Ink(
            //               padding: const EdgeInsets.all(20),
            //               child: Row(
            //                 mainAxisAlignment: MainAxisAlignment.center,
            //                 children: [
            //                   Text(
            //                     'REGISTER',
            //                     style: Styles.normalStyle.copyWith(
            //                       color: Colors.white,
            //                       fontSize: 18,
            //                     ),
            //                   ),
            //                   SvgPicture.asset('assets/images/next_icon.svg'),
            //                 ],
            //               ),
            //             ),
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ),
        ],
      ),
    );
  }
}
