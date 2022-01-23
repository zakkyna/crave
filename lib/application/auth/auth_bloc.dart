import 'package:bloc/bloc.dart';
import 'package:crave_app/domain/auth/i_auth_facade.dart';
import 'package:crave_app/domain/notification/i_notification_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@lazySingleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;
  final INotificationRepository _notificationRepository;
  AuthBloc(this._authFacade, this._notificationRepository)
      : super(const Initial()) {
    on<AuthEvent>(
      (event, emit) async {
        await event.map(
          authCheckRequested: (e) async {
            final profileOption = await _authFacade.getSignedInUserProfile();
            emit(
              profileOption.match(
                (profile) => profile.isNewUser
                    ? const AuthState.newUser()
                    : const AuthState.authenticated(),
                () => const AuthState.unauthenticated(),
              ),
            );
          },
          signedOut: (e) async {
            await _authFacade.signOut();
            emit(
              const AuthState.unauthenticated(),
            );
          },
          postToken: (_) async {
            await _notificationRepository.init();
            await _notificationRepository.postToken();
          },
        );
      },
    );
  }
}
