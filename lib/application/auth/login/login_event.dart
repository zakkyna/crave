part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.phoneNumberChanged(String phoneNumberStr) =
      _PhoneNumberChanged;
  const factory LoginEvent.otpChanged(String otpStr) = _OtpChanged;
  const factory LoginEvent.setVerificationId(String verificationId) =
      _SetVerificationId;
  const factory LoginEvent.loginWithPhoneNumberPressed() =
      _LoginWithPhoneNumberPressed;
  const factory LoginEvent.signInWithApplePressed() = _SignInWithApplePressed;
  const factory LoginEvent.otpSubmitted() = _OtpSubmitted;
  const factory LoginEvent.removeState() = _RemoveState;
}
