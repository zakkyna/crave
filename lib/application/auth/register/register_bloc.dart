import 'package:bloc/bloc.dart';
import 'package:crave_app/domain/auth/auth_failure.dart';
import 'package:crave_app/domain/auth/i_auth_facade.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';

part 'register_event.dart';
part 'register_state.dart';
part 'register_bloc.freezed.dart';

@lazySingleton
class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final IAuthFacade _authFacade;

  RegisterBloc(this._authFacade) : super(RegisterState.initial()) {
    on<RegisterEvent>((event, emit) async {
      await event.map(
        selectGender: (_event) async {
          emit(
            state.copyWith(genderId: optionOf(_event.id)),
          );
        },
        init: (_event) async {
          final locationGranted = await Permission.location.isGranted;
          final notificationGranted = await Permission.notification.isGranted;
          emit(
            state.copyWith(
              locationPermissionAllowed: locationGranted,
              notificationPermissionAllowed: notificationGranted,
            ),
          );
        },
        setLocationPermission: (_event) async {
          final granted = await Permission.location.request().isGranted;
          if (granted) {
            emit(state.copyWith(locationPermissionAllowed: granted));
          } else {
            if (await Permission.location.isPermanentlyDenied) {
              await openAppSettings();
            }
          }
        },
        setNotificationPermission: (_event) async {
          final granted = await Permission.notification.request().isGranted;
          if (granted) {
            emit(state.copyWith(notificationPermissionAllowed: granted));
          } else {
            if (await Permission.notification.isPermanentlyDenied) {
              await openAppSettings();
            }
          }
        },
        registerSubmitted: (_event) async {
          emit(state.copyWith(isLoading: true));
          final genderId = state.genderId.foldRight(0, (acc, t) => t);
          Either<AuthFailure, Unit>? failureOrSuccess;
          if (genderId != 0) {
            failureOrSuccess =
                await _authFacade.registerUser(genderId: genderId);
          }
          emit(
            state.copyWith(
              isLoading: false,
              registerFailureOrSuccess: optionOf(failureOrSuccess),
            ),
          );
        },
        removeState: (_event) async {
          emit(RegisterState.initial());
        },
      );
    });
  }
}
