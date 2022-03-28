import 'package:crave_app/application/auth/login/login_bloc.dart';
import 'package:crave_app/domain/core/theme/theme.dart';
import 'package:crave_app/presentation/auth/auth_steps/verify_otp_page.dart';
import 'package:crave_app/presentation/auth/widgets/auth_scafold.dart';
import 'package:crave_app/presentation/core/widget/custom_button.dart';
import 'package:crave_app/presentation/core/widget/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_multi_formatter/flutter_multi_formatter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class InputNumberPage extends HookWidget {
  const InputNumberPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textEditingController = useTextEditingController(text: '+1');
    final focusNode = useFocusNode();
    textEditingController.addListener(() {
      context
          .read<LoginBloc>()
          .add(LoginEvent.phoneNumberChanged(textEditingController.text));
    });
    return BlocConsumer<LoginBloc, LoginState>(
      listener: (context, state) {
        state.verifyFailureOrSuccessOption.match((failureOrSuccess) {
          failureOrSuccess.match(
            (failure) {
              final message = failure.map(
                noInternet: (_) => 'No internet',
                unexpected: (_) => 'Unexpected error',
                serverError: (e) => e.message,
                cancelledByUser: (_) => 'Cancelled',
                emailAlreadyInUse: (_) => 'Email already in use',
                expiredCredential: (_) => 'Expired credential',
                invalidOtpCode: (_) => 'Invalid OTP code',
                invalidEmailAndPasswordCombination: (value) =>
                    'Invalid email and password combination',
              );
              Get.snackbar(
                'Sorry',
                message,
              );
            },
            (verificationId) {
              context
                  .read<LoginBloc>()
                  .add(LoginEvent.setVerificationId(verificationId));
              focusNode.unfocus();
              Get.to(() => const VerifyOtpPage());
            },
          );
        }, () {});
      },
      builder: (context, state) => AuthScafold(
        isLoading: state.isSubmitting,
        currentStep: 1,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AddVerticalSpace(Dimens.defaultMargin),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: Dimens.defaultMargin),
                  child: Text(
                    'Your phone number is required for login',
                    style: Styles.kefa18Medium,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(Dimens.defaultMargin),
                  child: TextFormField(
                    controller: textEditingController,
                    focusNode: focusNode,
                    autofocus: true,
                    keyboardType: TextInputType.number,
                    style: Styles.kefa24Medium,
                    inputFormatters: <TextInputFormatter>[
                      PhoneInputFormatter(allowEndlessPhone: true),
                    ],
                    decoration: const InputDecoration(
                      hintText: 'ENTER PHONE NUMBER',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
            CustomButton(
              margin: const EdgeInsets.symmetric(
                horizontal: Dimens.defaultMargin,
                vertical: Dimens.defaultMargin * 2,
              ),
              onPressed: () {
                context.read<LoginBloc>().add(
                      const LoginEvent.loginWithPhoneNumberPressed(),
                    );
              },
              label: 'NEXT',
            ),
          ],
        ),
      ),
    );
  }
}
