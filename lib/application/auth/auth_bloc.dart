import 'package:bloc/bloc.dart';
import 'package:crave_app/domain/auth/i_auth_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;
  AuthBloc(this._authFacade) : super(const Initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
        authCheckRequested: (e) async {
          final userOption = await _authFacade.getSignedInUser();
          emit(
            userOption.match(
              (user) => const AuthState.authenticated(),
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
      );
    });
  }
}
