// import 'dart:async';

// import 'package:crave_app/application/auth/login/login_bloc.dart';
// import 'package:crave_app/application/auth/register/register_bloc.dart';
// import 'package:crave_app/domain/core/theme/theme.dart';
// import 'package:crave_app/presentation/auth/auth_steps/input_number_page.dart';
// import 'package:crave_app/presentation/auth/auth_steps/location_setting_page.dart';
// import 'package:crave_app/presentation/auth/auth_steps/push_notification_setting_page.dart';
// import 'package:crave_app/presentation/auth/auth_steps/select_gender_page.dart';
// import 'package:crave_app/presentation/auth/auth_steps/verify_otp_page.dart';
// import 'package:crave_app/presentation/core/widget/custom_stepper.dart';
// import 'package:crave_app/presentation/core/widget/stack_with_progress.dart';
// import 'package:crave_app/presentation/routers/routers.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:get/get.dart';

// class AuthPage extends HookWidget {
//   final int? pageIndex;
//   const AuthPage({
//     Key? key,
//     this.pageIndex,
//   }) : super(key: key);

//   Future<bool> initializeController() {
//     Completer<bool> completer = Completer<bool>();

//     /// Callback called after widget has been fully built
//     WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
//       completer.complete(true);
//     });

//     return completer.future;
//   }

//   @override
//   Widget build(BuildContext context) {
//     final pageController = usePageController();
//     final page = useState(pageIndex ?? 0);
//     final isInitialized = useState(false);
//     if (pageIndex != null && !isInitialized.value) {
//       FocusScope.of(context).requestFocus(FocusNode());
//       initializeController().then((value) {
//         pageController.jumpToPage(pageIndex!);
//       }).then(
//         (value) {
//           isInitialized.value = true;
//         },
//       );
//     }
//     pageController.addListener(() {
//       page.value = pageController.page?.round() ?? 0;
//     });

//     onNext() => pageController.nextPage(
//           duration: const Duration(milliseconds: 300),
//           curve: Curves.easeOut,
//         );

//     return BlocConsumer<RegisterBloc, RegisterState>(
//       bloc: context.read<RegisterBloc>()..add(const RegisterEvent.init()),
//       listener: (context, state) {
//         state.registerFailureOrSuccess.match(
//           (t) => t.match(
//             (l) {},
//             (r) {
//               context
//                   .read<RegisterBloc>()
//                   .add(const RegisterEvent.removeState());
//               Get.offAllNamed(Routers.main);
//             },
//           ),
//           () {},
//         );
//       },
//       builder: (context, registerState) => BlocConsumer<LoginBloc, LoginState>(
//         listener: (context, state) {
//           if (isInitialized.value) {
//             state.otpFailureOrSuccessOption.match(
//               (failureOrSuccess) {
//                 failureOrSuccess.fold(
//                   (failure) {},
//                   (user) {
//                     final isUserRegistered = !user.isNewUser;
//                     if (isUserRegistered) {
//                       context
//                           .read<LoginBloc>()
//                           .add(const LoginEvent.removeState());
//                       Get.offAllNamed(Routers.main);
//                     } else {
//                       onNext();
//                     }
//                   },
//                 );
//               },
//               () {},
//             );
//           }
//         },
//         builder: (context, state) {
//           final listPage = <Widget>[
//             InputNumberPage(
//               onNext: onNext,
//               isInPage: page.value == 0,
//             ),
//             VerifyOtpPage(
//               onNext: onNext,
//               isInPage: page.value == 1,
//             ),
//             SelectGenderPage(onNext: onNext),
//             LocationSettingPage(
//               onNext: onNext,
//               isInPage: page.value == 3,
//             ),
//             PushNotificationSettingPage(
//               isInPage: page.value == 4,
//               onNext: () => context
//                   .read<RegisterBloc>()
//                   .add(const RegisterEvent.registerSubmitted()),
//             ),
//           ];
//           return Scaffold(
//             resizeToAvoidBottomInset: page.value == 2 ? false : true,
//             child: StackWithProgress(
//               isLoading: state.isSubmitting || registerState.isLoading,
//               children: [
//                 SafeArea(
//                   child: Column(
//                     children: [
//                       Column(
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           Center(
//                             child: Padding(
//                               padding:
//                                   const EdgeInsets.all(Dimens.defaultMargin),
//                               child: SvgPicture.asset(
//                                   'assets/images/crave_logo.svg'),
//                             ),
//                           ),
//                           Container(
//                             width: double.infinity,
//                             padding: const EdgeInsets.all(Dimens.defaultMargin),
//                             child: CustomStepper(
//                               currentStep: page.value + 1,
//                               totalSteps: listPage.length,
//                             ),
//                           ),
//                         ],
//                       ),
//                       Expanded(
//                         child: PageView(
//                           physics: const NeverScrollableScrollPhysics(),
//                           controller: pageController,
//                           children: listPage,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
