import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
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
        init: (_event) async {
          if (state.isInitialized) {
            return;
          }

          emit(
            state.copyWith(
              isInitialized: true,
            ),
          );
        },
        loadSettings: (_event) async {
          emit(
            state.copyWith(
              isLoading: true,
            ),
          );
        },
        togglePushNotification: (_event) async {},
      );
    });
  }
}
