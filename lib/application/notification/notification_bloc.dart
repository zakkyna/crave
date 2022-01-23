import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'notification_event.dart';
part 'notification_state.dart';
part 'notification_bloc.freezed.dart';

@lazySingleton
class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  NotificationBloc() : super(NotificationState.initial()) {
    on<NotificationEvent>((event, emit) async {
      await event.map(
        loadSettings: (_eveny) async {},
        togglePushNotification: (_eveny) async {},
      );
    });
  }
}
