part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required PhoneNumber phoneNumber,
    required OtpCode otpCode,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AuthFailure, String>> verifyFailureOrSuccessOption,
    required Option<Either<AuthFailure, Profile>> otpFailureOrSuccessOption,
    required Option<Either<AuthFailure, Profile>>
        signInAppleFailureOrSuccessOption,
    required Option<String> verificationId,
  }) = _LoginState;

  factory LoginState.initial() => LoginState(
        phoneNumber: PhoneNumber(''),
        otpCode: OtpCode(''),
        showErrorMessages: false,
        isSubmitting: false,
        verifyFailureOrSuccessOption: none(),
        otpFailureOrSuccessOption: none(),
        signInAppleFailureOrSuccessOption: none(),
        verificationId: none(),
      );
}
