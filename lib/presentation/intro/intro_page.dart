import 'dart:async';

import 'package:crave_app/domain/core/theme/theme.dart';
import 'package:crave_app/domain/intro/entity/intro.dart';
import 'package:crave_app/presentation/intro/intro_widget.dart';
import 'package:crave_app/presentation/routers/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroPage extends HookWidget {
  const IntroPage({Key? key}) : super(key: key);

  Future<bool> initializeController() {
    Completer<bool> completer = Completer<bool>();

    /// Callback called after widget has been fully built
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      completer.complete(true);
    });

    return completer.future;
  }

  @override
  Widget build(BuildContext context) {
    final pageController = PageController();
    final page = useState(0);
    pageController.addListener(() {
      page.value = pageController.page?.round() ?? 0;
    });
    const listIntro = <Intro>[
      Intro(
        asset: 'assets/images/intro1.svg',
        title: 'Start the game',
        description: 'Make a post and start your adventure. 😉',
      ),
      Intro(
        asset: 'assets/images/intro2.svg',
        title: 'Anonymously playing',
        description:
            'You can add a photo if you want, but you don\'t have to. It\'ll be your secret 🤫',
      ),
      Intro(
        asset: 'assets/images/intro3.svg',
        title: 'Get ready to enjoy',
        description:
            'Shorten this to You can meet someone from literally anywhere 🎭',
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
          FutureBuilder(
            future: initializeController(),
            builder: (BuildContext context, AsyncSnapshot<void> snap) {
              if (!snap.hasData) {
                return const SizedBox();
              }

              return Positioned(
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
                          onPressed: page.value == listIntro.length - 1
                              ? () => Get.toNamed(Routers.auth)
                              : () => pageController.nextPage(
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
              );
            },
          )
        ],
      ),
    );
  }
}
