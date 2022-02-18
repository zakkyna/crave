import 'package:crave_app/application/auth/auth_bloc.dart';
import 'package:crave_app/application/subscription/purchase/purchase_bloc.dart';
import 'package:crave_app/application/subscription/subscription_bloc.dart';
import 'package:crave_app/domain/core/theme/theme.dart';
import 'package:crave_app/domain/subscription/subscription.dart';
import 'package:crave_app/presentation/core/widget/spacing.dart';
import 'package:crave_app/presentation/core/widget/stack_with_progress.dart';
import 'package:crave_app/presentation/subscription/widget/subscription_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class BuySubscriptionPage extends StatelessWidget {
  const BuySubscriptionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final subscriptions = [
      const Subscription(
        id: '1_one_week_subs',
        price: 9.99,
        title: "ONE WEEK",
        description: "",
        bannerUrl: "assets/subscription/subscription_banner_1.svg",
      ),
      const Subscription(
        id: '2_one_month_subs',
        price: 29.99,
        title: "ONE MONTH",
        description: "",
        bannerUrl: "assets/subscription/subscription_banner_2.svg",
      ),
      const Subscription(
        id: '3_one_year_subs',
        price: 99.99,
        title: "ONE YEAR",
        description: "",
        bannerUrl: "assets/subscription/subscription_banner_3.svg",
      ),
    ];
    final _purchaseBloc = context.read<PurchaseBloc>();
    final _subscriptionBloc = context.read<SubscriptionBloc>();
    return Scaffold(
      body: BlocConsumer<PurchaseBloc, PurchaseState>(
        bloc: _purchaseBloc
          ..add(const PurchaseEvent.getProducts())
          ..add(
            PurchaseEvent.getPurchaseStream(
              onError: (e) {
                Get.snackbar('Sorry', '$e');
              },
            ),
          ),
        listener: (context, state) {
          state.buyProductFailureOrSuccessOption.match((t) {
            t.match((l) {
              print('line 58');
              _purchaseBloc.add(const PurchaseEvent.clearError());
              Get.snackbar('Sorry', 'Something when wrong');
            }, (r) {
              print('buy success');
            });
          }, () {});
          state.verifyPurchaseFailureOrSuccessOption.match(
            (t) => t.match((l) {
              print('line 66');
              _purchaseBloc.add(const PurchaseEvent.clearError());
              Get.snackbar('Sorry', 'Something went wrong');
            }, (r) {
              Get.snackbar('Subscription purchased', 'Verifying...');
              _purchaseBloc.add(PurchaseEvent.completePurchase(r));
            }),
            () {},
          );
          state.completePurchaseFailureOrSuccessOption.match(
            (t) => t.match((l) {
              _purchaseBloc.add(const PurchaseEvent.clearError());
              Get.snackbar('Sorry', 'Verification failed');
            }, (r) {
              _purchaseBloc.add(const PurchaseEvent.clearError());
              _subscriptionBloc
                  .add(const SubscriptionEvent.checkSubscription());
            }),
            () {},
          );
        },
        builder: (context, state) => StackWithProgress(
          isLoading: state.getProductOption.isNone() || state.isLoading,
          children: [
            SafeArea(
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
                      "How much would you pay for an adventure?".toUpperCase(),
                      style: Styles.kefa24Medium,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  ...subscriptions.map((subscription) {
                    return SubscriptionCard(
                      subscription: subscription,
                      onTap: () {
                        _purchaseBloc
                            .add(PurchaseEvent.buyProduct(subscription.id));
                      },
                    );
                  }),
                  Padding(
                    padding: const EdgeInsets.all(Dimens.defaultMargin),
                    child: Container(
                      padding: const EdgeInsets.all(Dimens.defaultMargin),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColors.greyBackground,
                        borderRadius:
                            BorderRadius.circular(Dimens.defaultMargin),
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
                              "You can like anyone around the world. CRAVE has no borders! Tap on the ♥ icon, go chatting and have fun!",
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
                              "All chats self-destruct in 24 hours.If you want to add more time to the chat timer, it's only \$1.99",
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
                              "Try Video Chatting with someone new, tap the 🎥 icon in Chat and get to know someone through the lens of your camera! ",
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
                  AddVerticalSpace(40),
                  GestureDetector(
                    onTap: () {
                      context.read<AuthBloc>().add(AuthEvent.signedOut());
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(Dimens.defaultMargin),
                      child: Text(
                        "Log out".toUpperCase(),
                        style: Styles.kefa20Medium,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
