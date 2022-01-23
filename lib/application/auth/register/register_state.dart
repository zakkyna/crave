part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    required Option<int> genderId,
    required bool locationPermissionAllowed,
    required bool notificationPermissionAllowed,
    required Option<Either<AuthFailure, Unit>> registerFailureOrSuccess,
    required bool isLoading,
  }) = _RegisterState;
  factory RegisterState.initial() => RegisterState(
        genderId: none(),
        locationPermissionAllowed: false,
        notificationPermissionAllowed: false,
        registerFailureOrSuccess: none(),
        isLoading: false,
      );
}
