import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:crave_app/domain/core/theme/theme.dart';

enum IconBackType { arrow, cross }

class CustomScafold extends StatelessWidget {
  final bool showBackButton;
  final bool centerTitle;
  final Widget body;
  final Widget suffixWidget;
  final String title;
  final Widget? titleWidget;
  final Color appBarColor;
  final Color iconBackColor;
  final Color titleFontColor;
  final IconBackType iconBackType;
  final double titleHorizontalMargin;
  final bool cornerRadius;
  final Color backgroundColor;

  const CustomScafold({
    Key? key,
    this.centerTitle = true,
    this.titleWidget,
    this.body = const SizedBox(),
    this.suffixWidget = const SizedBox(
      width: 35,
    ),
    this.title = '',
    this.showBackButton = false,
    this.appBarColor = AppColors.mainColor,
    this.iconBackColor = Colors.white,
    this.titleFontColor = Colors.white,
    this.iconBackType = IconBackType.arrow,
    this.titleHorizontalMargin = 50,
    this.cornerRadius = false,
    this.backgroundColor = AppColors.landingBackground,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: AppColors.mainColor,
      ),
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).padding.top,
              child: Container(
                color: AppColors.mainColor,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(
                Dimens.defaultMargin,
              ),
              decoration: BoxDecoration(
                color: appBarColor,
                borderRadius: cornerRadius
                    ? const BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      )
                    : null,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: titleHorizontalMargin,
                      ),
                      Expanded(
                        child: titleWidget ??
                            Text(
                              title,
                              style: Styles.appBarTitleStyle
                                  .copyWith(color: titleFontColor),
                              textAlign: centerTitle
                                  ? TextAlign.center
                                  : TextAlign.left,
                            ),
                      ),
                      SizedBox(
                        width: titleHorizontalMargin,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      showBackButton
                          ? GestureDetector(
                              onTap: () => Get.back(),
                              child: Icon(
                                iconBackType == IconBackType.arrow
                                    ? Icons.arrow_back_ios_rounded
                                    : Icons.close_rounded,
                                color: iconBackColor,
                                size: 25,
                              ),
                            )
                          : const SizedBox(
                              width: 35,
                            ),
                      const Expanded(child: SizedBox()),
                      suffixWidget,
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: MediaQuery.removePadding(
                removeTop: true,
                context: context,
                child: body,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
