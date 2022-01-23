import 'package:crave_app/domain/subscription/subscription.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class SubscriptionCard extends StatelessWidget {
  final Subscription subscription;
  const SubscriptionCard({
    Key? key,
    required this.subscription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Ink(
        child: InkWell(
          onTap: () {},
          child: ClipRect(
            child: Align(
              alignment: Alignment.topCenter,
              widthFactor: 0.96,
              heightFactor: 0.85,
              child: SvgPicture.asset(
                subscription.bannerUrl,
                fit: BoxFit.fill,
                width: double.infinity,
                height: 130.h,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
