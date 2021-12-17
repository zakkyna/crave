import 'package:crave_app/domain/core/theme/theme.dart';
import 'package:crave_app/domain/subscription/subscription.dart';
import 'package:crave_app/presentation/subscription/widget/subscription_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BuySubscriptionPage extends StatelessWidget {
  const BuySubscriptionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final subscriptions = [
      const Subscription(
        id: 1,
        price: 9.99,
        title: "ONE WEEK",
        description: "",
        bannerUrl: "assets/subscription/subscription_banner_1.svg",
      ),
      const Subscription(
        id: 2,
        price: 29.99,
        title: "ONE MONTH",
        description: "",
        bannerUrl: "assets/subscription/subscription_banner_2.svg",
      ),
      const Subscription(
        id: 3,
        price: 99.99,
        title: "ONE YEAR",
        description: "",
        bannerUrl: "assets/subscription/subscription_banner_3.svg",
      ),
    ];
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.all(Dimens.defaultMargin),
                child: SvgPicture.asset('assets/images/crave_logo.svg'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(Dimens.defaultMargin),
              child: Text(
                "How much  would you pay for an adventure?".toUpperCase(),
                style: Styles.kefa24Medium,
                textAlign: TextAlign.center,
              ),
            ),
            ...subscriptions.map((subscription) {
              return SubscriptionCard(
                subscription: subscription,
              );
            }),
            Padding(
              padding: const EdgeInsets.all(Dimens.defaultMargin),
              child: Container(
                padding: const EdgeInsets.all(Dimens.defaultMargin),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColors.greyBackground,
                  borderRadius: BorderRadius.circular(Dimens.defaultMargin),
                ),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      leading: const Icon(
                        Icons.fiber_manual_record,
                        size: 15,
                      ),
                      contentPadding: EdgeInsets.zero,
                      minLeadingWidth: 15,
                      title: Text(
                        "After purchasing the subscription, your post will appear to the public. You can also see posts from other people. Find someone you like and Have fun!",
                        style: Styles.kefa14Medium.copyWith(height: 1.5),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.fiber_manual_record,
                        size: 15,
                      ),
                      contentPadding: EdgeInsets.zero,
                      minLeadingWidth: 15,
                      title: Text(
                        "Fancy someone?\nYou can like anyone around the world. CRAVE has no borders! Tap on the ♥ icon, go chatting and have fun!",
                        style: Styles.kefa14Medium.copyWith(height: 1.5),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.fiber_manual_record,
                        size: 15,
                      ),
                      contentPadding: EdgeInsets.zero,
                      minLeadingWidth: 15,
                      title: Text(
                        "All chats self-destruct in 24 hours. So if you want to add chat timer, we provide feature only \$1,99",
                        style: Styles.kefa14Medium.copyWith(height: 1.5),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    ListTile(
                      leading: const Icon(
                        Icons.fiber_manual_record,
                        size: 15,
                      ),
                      contentPadding: EdgeInsets.zero,
                      minLeadingWidth: 15,
                      title: Text(
                        "Why not trying video chats? Use video chats to get your best experience using CRAVE!",
                        style: Styles.kefa14Medium.copyWith(height: 1.5),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(Dimens.defaultMargin),
              child: Text(
                "TERMS & CONDITIONS".toUpperCase(),
                style: Styles.kefa20Medium,
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(Dimens.defaultMargin),
              child: Text(
                "PRIVACY POLICY".toUpperCase(),
                style: Styles.kefa20Medium,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
