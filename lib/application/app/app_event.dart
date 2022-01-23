part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.started() = _Started;
  const factory AppEvent.connectionChanged(ConnectivityResult connection) =
      _ConnectionChanged;
  const factory AppEvent.statusChanged(UserStatus userStatus) = _StatusChanged;
}
