import 'package:crave_app/domain/core/theme/theme.dart';
import 'package:crave_app/presentation/core/widget/custom_button.dart';
import 'package:crave_app/presentation/core/widget/custom_textfield.dart';
import 'package:crave_app/presentation/routers/routers.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:crave_app/presentation/core/widget/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart' hide Svg;
import 'package:get/get.dart';

class CompleteProfilePage extends StatelessWidget {
  const CompleteProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(Dimens.defaultMargin),
              child: Text(
                "complete profile".toUpperCase(),
                style: Styles.kefa18Medium,
                textAlign: TextAlign.center,
              ),
            ),
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 60.r,
                    backgroundColor: const Color(0xFFFFEBEE),
                    child: SvgPicture.asset('assets/images/empty_image.svg'),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 17.r,
                      backgroundColor: AppColors.mainColor,
                      child: SvgPicture.asset('assets/images/camera_icon.svg'),
                    ),
                  )
                ],
              ),
            ),
            addVerticalSpace(20),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Dimens.defaultMargin,
              ),
              child: Text(
                "Add your best photos (Max 3 Photos)",
                style: Styles.kefa14Regular.copyWith(
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            addVerticalSpace(20),
            // CustomButton(
            //   margin: const EdgeInsets.all(Dimens.defaultMargin),
            //   padding: const EdgeInsets.all(
            //     8,
            //   ),
            //   height: 50.h,
            //   onPressed: () {},
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       SvgPicture.asset('assets/images/upload_icon.svg'),
            //       addHorizontalSpace(10),
            //       Text(
            //         'Upload your Photos',
            //         style: Styles.kefa14Regular.copyWith(
            //           color: Colors.white,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: Dimens.defaultMargin),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          Dimens.defaultBorderRadius,
                        ),
                        color: const Color(0xFFFFEBEE),
                      ),
                      height: 160.h,
                      child: Center(
                        child: SvgPicture.asset('assets/images/add_photo.svg'),
                      ),
                    ),
                  ),
                  addHorizontalSpace(12.w),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          Dimens.defaultBorderRadius,
                        ),
                        color: const Color(0xFFFFEBEE),
                      ),
                      height: 160.h,
                      child: Center(
                        child: SvgPicture.asset('assets/images/add_photo.svg'),
                      ),
                    ),
                  ),
                  addHorizontalSpace(12.w),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          Dimens.defaultBorderRadius,
                        ),
                        color: const Color(0xFFFFEBEE),
                      ),
                      height: 160.h,
                      child: Center(
                        child: SvgPicture.asset('assets/images/add_photo.svg'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(Dimens.defaultMargin),
              child: CustomTextField(
                fillColor: const Color(0xFFFFEBEE),
                maxLines: 10,
                hintText: 'Type your memo here...',
                hintStyle: Styles.kefa14Regular.copyWith(
                  color: Colors.grey,
                ),
              ),
            ),
            CustomButton(
              margin: const EdgeInsets.symmetric(
                horizontal: Dimens.defaultMargin,
                vertical: Dimens.defaultMargin,
              ),
              height: 56.h,
              onPressed: () {
                Get.toNamed(Routers.landing);
              },
              label: 'CONTINUE',
            ),
            addVerticalSpace(40)
          ],
        ),
      ),
    );
  }
}
