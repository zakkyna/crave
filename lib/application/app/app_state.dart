part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    required bool isLoading,
    required bool isPreinstalled,
    required ConnectivityResult connectionStatus,
  }) = _AppState;

  factory AppState.initial() => const AppState(
        isPreinstalled: false,
        isLoading: false,
        connectionStatus: ConnectivityResult.none,
      );
}
