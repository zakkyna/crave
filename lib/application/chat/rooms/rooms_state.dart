part of 'rooms_bloc.dart';

@freezed
class RoomsState with _$RoomsState {
  const factory RoomsState({
    required bool isLoading,
    required Option<Either<ChatFailure, Stream<List<RoomModel>>>>
        streamFailureOrSuccessOptiion,
  }) = _RoomsState;

  factory RoomsState.initial() => RoomsState(
        isLoading: false,
        streamFailureOrSuccessOptiion: none(),
      );
}
