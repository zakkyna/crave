import 'package:crave_app/domain/core/theme/theme.dart';
import 'package:crave_app/domain/intro/entity/intro.dart';
import 'package:crave_app/presentation/intro/intro_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pageController = PageController();
    const listIntro = <Intro>[
      Intro(
        asset: 'assets/images/intro1.svg',
        title: 'Start the game',
        description:
            'Upload your photo and get ready for your night adventure.',
      ),
      Intro(
        asset: 'assets/images/intro2.svg',
        title: 'Anonymously playing',
        description:
            'Hurry up. You’ll have an hour to look a partner and one more hour to arrange a meeting.',
      ),
      Intro(
        asset: 'assets/images/intro3.svg',
        title: 'Get ready to enjoy',
        description:
            'Meet and enjoy yourselves with pleasure. Without continuing.',
      ),
    ];
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: SafeArea(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: Dimens.defaultMargin),
                  child: SvgPicture.asset(
                    'assets/images/crave_logo.svg',
                    width: 120,
                  ),
                ),
              ),
            ),
          ),
          PageView(
            controller: pageController,
            children: [
              ...listIntro.map(
                (intro) => IntroWidget(intro: intro),
              ),
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: Dimens.defaultMargin),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: Text(
                        'SKIP',
                        style: Styles.kefa15Bold.copyWith(
                          color: AppColors.mainColor.withOpacity(0.6),
                        ),
                      ),
                    ),
                    SmoothPageIndicator(
                      controller: pageController,
                      count: listIntro.length,
                      effect: const WormEffect(
                        activeDotColor: AppColors.mainColor,
                        dotColor: AppColors.dividerColor,
                        dotHeight: 8,
                        dotWidth: 8,
                      ),
                    ),
                    TextButton(
                      onPressed: () => pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeOut,
                      ),
                      child: Text(
                        'NEXT',
                        style: Styles.kefa15Bold.copyWith(
                          color: AppColors.mainColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
