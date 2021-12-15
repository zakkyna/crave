import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomCarousel extends StatelessWidget {
  const CustomCarousel({
    Key? key,
    required this.count,
    required this.builder,
    required this.aspectRatio,
    this.spacing = 0,
    this.onChange,
    required this.controller,
    this.dotColor = Colors.grey,
    this.dotHeight = 8,
    this.dotWidth = 8,
    this.dotAlignment = Alignment.bottomCenter,
    this.dotSpacing = 8,
    this.activeDotColor = Colors.orange,
    this.dotMargin = 10,
  }) : super(key: key);

  final int count;
  final double spacing;
  final PageController controller;

  final Widget Function(BuildContext context, int index) builder;

  final double aspectRatio;
  final Function(int)? onChange;

  final Color dotColor;
  final Color activeDotColor;
  final double dotHeight;
  final double dotWidth;
  final double dotSpacing;
  final double dotMargin;

  final Alignment dotAlignment;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio,
      child: Stack(
        children: [
          ListView.builder(
            controller: controller,
            physics: const PageScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: count,
            itemBuilder: (context, index) {
              final Widget item = builder(context, index);
              return SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: spacing),
                  child: item,
                ),
              );
            },
          ),
          Positioned.fill(
            child: Align(
              alignment: dotAlignment,
              child: Padding(
                padding: EdgeInsets.all(dotMargin),
                child: SmoothPageIndicator(
                  count: count,
                  controller: controller,
                  effect: WormEffect(
                    dotColor: dotColor,
                    dotHeight: dotHeight,
                    dotWidth: dotWidth,
                    spacing: dotSpacing,
                    activeDotColor: activeDotColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
