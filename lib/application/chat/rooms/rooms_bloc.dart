import 'package:bloc/bloc.dart';
import 'package:crave_app/domain/chat/chat_failure.dart';
import 'package:crave_app/domain/chat/i_chat_repository.dart';
import 'package:crave_app/domain/chat/room_model.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'rooms_event.dart';
part 'rooms_state.dart';
part 'rooms_bloc.freezed.dart';

@lazySingleton
class RoomsBloc extends Bloc<RoomsEvent, RoomsState> {
  final IChatRepository _chatRepository;
  RoomsBloc(this._chatRepository) : super(RoomsState.initial()) {
    on<RoomsEvent>((event, emit) async {
      await event.map(
        getStream: (_event) async {
          emit(state.copyWith(isLoading: true));
          final roomsStream = await _chatRepository.getRoomsStream();
          emit(state.copyWith(
            isLoading: false,
            streamFailureOrSuccessOptiion: optionOf(roomsStream),
          ));
        },
      );
    });
  }
}
