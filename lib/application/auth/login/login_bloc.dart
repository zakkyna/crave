import 'package:bloc/bloc.dart';
import 'package:crave_app/domain/auth/auth_failure.dart';
import 'package:crave_app/domain/auth/i_auth_facade.dart';
import 'package:crave_app/domain/auth/value_objects.dart';
import 'package:crave_app/domain/profile/profile.dart';
import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

@lazySingleton
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final IAuthFacade _authFacade;
  LoginBloc(this._authFacade) : super(LoginState.initial()) {
    on<LoginEvent>(
      (event, emit) async {
        await event.map(
          phoneNumberChanged: (_event) async {
            final phone =
                _event.phoneNumberStr.replaceAll(RegExp(r'[^0-9]'), '');
            emit(
              state.copyWith(
                phoneNumber: PhoneNumber(phone),
                verifyFailureOrSuccessOption: none(),
                verificationId: none(),
              ),
            );
          },
          otpChanged: (_event) async {
            final otp = _event.otpStr.replaceAll(RegExp(r'[^0-9]'), '');
            emit(
              state.copyWith(
                otpCode: OtpCode(otp),
                otpFailureOrSuccessOption: none(),
              ),
            );
          },
          loginWithPhoneNumberPressed: (_event) async {
            emit(state.copyWith(
              isSubmitting: true,
            ));
            final failureOrSuccess = await _authFacade.verifyPhoneNumber(
              phoneNumber: state.phoneNumber,
            );
            emit(
              state.copyWith(
                verifyFailureOrSuccessOption: optionOf(failureOrSuccess),
                isSubmitting: false,
              ),
            );
          },
          setVerificationId: (_event) async {
            emit(state.copyWith(
              verificationId: optionOf(_event.verificationId),
            ));
          },
          otpSubmitted: (_event) async {
            emit(state.copyWith(
              isSubmitting: true,
            ));
            final failureOrSuccess = await _authFacade.signInWithPhoneNumberOtp(
              verificationId: state.verificationId.getOrElse(() => ''),
              otpCode: state.otpCode,
            );
            emit(
              state.copyWith(
                otpFailureOrSuccessOption: optionOf(failureOrSuccess),
                isSubmitting: false,
              ),
            );
          },
          removeState: (_event) {
            emit(LoginState.initial());
          },
          signInWithApplePressed: (_event) {
            emit(state.copyWith(
              isSubmitting: true,
            ));
          },
        );
      },
    );
  }
}
