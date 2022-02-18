import 'package:crave_app/domain/core/theme/theme.dart';
import 'package:crave_app/presentation/core/widget/custom_stepper.dart';
import 'package:crave_app/presentation/core/widget/stack_with_progress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AuthScafold extends StatelessWidget {
  final Widget body;
  final bool isLoading;
  final int currentStep;
  const AuthScafold({
    Key? key,
    required this.body,
    required this.isLoading,
    required this.currentStep,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StackWithProgress(
        isLoading: isLoading,
        children: [
          SafeArea(
            child: Column(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(Dimens.defaultMargin),
                        child: SvgPicture.asset('assets/images/crave_logo.svg'),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(Dimens.defaultMargin),
                      child: CustomStepper(
                        currentStep: currentStep,
                        totalSteps: 5,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: body,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
