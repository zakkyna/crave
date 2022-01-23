// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chatroom_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChatroomEventTearOff {
  const _$ChatroomEventTearOff();

  _GetChat getChat(ChatRequest chatRequest) {
    return _GetChat(
      chatRequest,
    );
  }

  _SendMessage sendMessage(
      {required SendChat content, required String roomId}) {
    return _SendMessage(
      content: content,
      roomId: roomId,
    );
  }

  _ReadMessage readMessage({required String roomId}) {
    return _ReadMessage(
      roomId: roomId,
    );
  }
}

/// @nodoc
const $ChatroomEvent = _$ChatroomEventTearOff();

/// @nodoc
mixin _$ChatroomEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatRequest chatRequest) getChat,
    required TResult Function(SendChat content, String roomId) sendMessage,
    required TResult Function(String roomId) readMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ChatRequest chatRequest)? getChat,
    TResult Function(SendChat content, String roomId)? sendMessage,
    TResult Function(String roomId)? readMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatRequest chatRequest)? getChat,
    TResult Function(SendChat content, String roomId)? sendMessage,
    TResult Function(String roomId)? readMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetChat value) getChat,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_ReadMessage value) readMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetChat value)? getChat,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_ReadMessage value)? readMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetChat value)? getChat,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_ReadMessage value)? readMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatroomEventCopyWith<$Res> {
  factory $ChatroomEventCopyWith(
          ChatroomEvent value, $Res Function(ChatroomEvent) then) =
      _$ChatroomEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatroomEventCopyWithImpl<$Res>
    implements $ChatroomEventCopyWith<$Res> {
  _$ChatroomEventCopyWithImpl(this._value, this._then);

  final ChatroomEvent _value;
  // ignore: unused_field
  final $Res Function(ChatroomEvent) _then;
}

/// @nodoc
abstract class _$GetChatCopyWith<$Res> {
  factory _$GetChatCopyWith(_GetChat value, $Res Function(_GetChat) then) =
      __$GetChatCopyWithImpl<$Res>;
  $Res call({ChatRequest chatRequest});

  $ChatRequestCopyWith<$Res> get chatRequest;
}

/// @nodoc
class __$GetChatCopyWithImpl<$Res> extends _$ChatroomEventCopyWithImpl<$Res>
    implements _$GetChatCopyWith<$Res> {
  __$GetChatCopyWithImpl(_GetChat _value, $Res Function(_GetChat) _then)
      : super(_value, (v) => _then(v as _GetChat));

  @override
  _GetChat get _value => super._value as _GetChat;

  @override
  $Res call({
    Object? chatRequest = freezed,
  }) {
    return _then(_GetChat(
      chatRequest == freezed
          ? _value.chatRequest
          : chatRequest // ignore: cast_nullable_to_non_nullable
              as ChatRequest,
    ));
  }

  @override
  $ChatRequestCopyWith<$Res> get chatRequest {
    return $ChatRequestCopyWith<$Res>(_value.chatRequest, (value) {
      return _then(_value.copyWith(chatRequest: value));
    });
  }
}

/// @nodoc

class _$_GetChat implements _GetChat {
  const _$_GetChat(this.chatRequest);

  @override
  final ChatRequest chatRequest;

  @override
  String toString() {
    return 'ChatroomEvent.getChat(chatRequest: $chatRequest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetChat &&
            (identical(other.chatRequest, chatRequest) ||
                other.chatRequest == chatRequest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatRequest);

  @JsonKey(ignore: true)
  @override
  _$GetChatCopyWith<_GetChat> get copyWith =>
      __$GetChatCopyWithImpl<_GetChat>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatRequest chatRequest) getChat,
    required TResult Function(SendChat content, String roomId) sendMessage,
    required TResult Function(String roomId) readMessage,
  }) {
    return getChat(chatRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ChatRequest chatRequest)? getChat,
    TResult Function(SendChat content, String roomId)? sendMessage,
    TResult Function(String roomId)? readMessage,
  }) {
    return getChat?.call(chatRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatRequest chatRequest)? getChat,
    TResult Function(SendChat content, String roomId)? sendMessage,
    TResult Function(String roomId)? readMessage,
    required TResult orElse(),
  }) {
    if (getChat != null) {
      return getChat(chatRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetChat value) getChat,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_ReadMessage value) readMessage,
  }) {
    return getChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetChat value)? getChat,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_ReadMessage value)? readMessage,
  }) {
    return getChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetChat value)? getChat,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_ReadMessage value)? readMessage,
    required TResult orElse(),
  }) {
    if (getChat != null) {
      return getChat(this);
    }
    return orElse();
  }
}

abstract class _GetChat implements ChatroomEvent {
  const factory _GetChat(ChatRequest chatRequest) = _$_GetChat;

  ChatRequest get chatRequest;
  @JsonKey(ignore: true)
  _$GetChatCopyWith<_GetChat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SendMessageCopyWith<$Res> {
  factory _$SendMessageCopyWith(
          _SendMessage value, $Res Function(_SendMessage) then) =
      __$SendMessageCopyWithImpl<$Res>;
  $Res call({SendChat content, String roomId});

  $SendChatCopyWith<$Res> get content;
}

/// @nodoc
class __$SendMessageCopyWithImpl<$Res> extends _$ChatroomEventCopyWithImpl<$Res>
    implements _$SendMessageCopyWith<$Res> {
  __$SendMessageCopyWithImpl(
      _SendMessage _value, $Res Function(_SendMessage) _then)
      : super(_value, (v) => _then(v as _SendMessage));

  @override
  _SendMessage get _value => super._value as _SendMessage;

  @override
  $Res call({
    Object? content = freezed,
    Object? roomId = freezed,
  }) {
    return _then(_SendMessage(
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as SendChat,
      roomId: roomId == freezed
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $SendChatCopyWith<$Res> get content {
    return $SendChatCopyWith<$Res>(_value.content, (value) {
      return _then(_value.copyWith(content: value));
    });
  }
}

/// @nodoc

class _$_SendMessage implements _SendMessage {
  const _$_SendMessage({required this.content, required this.roomId});

  @override
  final SendChat content;
  @override
  final String roomId;

  @override
  String toString() {
    return 'ChatroomEvent.sendMessage(content: $content, roomId: $roomId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SendMessage &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.roomId, roomId) || other.roomId == roomId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, content, roomId);

  @JsonKey(ignore: true)
  @override
  _$SendMessageCopyWith<_SendMessage> get copyWith =>
      __$SendMessageCopyWithImpl<_SendMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatRequest chatRequest) getChat,
    required TResult Function(SendChat content, String roomId) sendMessage,
    required TResult Function(String roomId) readMessage,
  }) {
    return sendMessage(content, roomId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ChatRequest chatRequest)? getChat,
    TResult Function(SendChat content, String roomId)? sendMessage,
    TResult Function(String roomId)? readMessage,
  }) {
    return sendMessage?.call(content, roomId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatRequest chatRequest)? getChat,
    TResult Function(SendChat content, String roomId)? sendMessage,
    TResult Function(String roomId)? readMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(content, roomId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetChat value) getChat,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_ReadMessage value) readMessage,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetChat value)? getChat,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_ReadMessage value)? readMessage,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetChat value)? getChat,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_ReadMessage value)? readMessage,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class _SendMessage implements ChatroomEvent {
  const factory _SendMessage(
      {required SendChat content, required String roomId}) = _$_SendMessage;

  SendChat get content;
  String get roomId;
  @JsonKey(ignore: true)
  _$SendMessageCopyWith<_SendMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ReadMessageCopyWith<$Res> {
  factory _$ReadMessageCopyWith(
          _ReadMessage value, $Res Function(_ReadMessage) then) =
      __$ReadMessageCopyWithImpl<$Res>;
  $Res call({String roomId});
}

/// @nodoc
class __$ReadMessageCopyWithImpl<$Res> extends _$ChatroomEventCopyWithImpl<$Res>
    implements _$ReadMessageCopyWith<$Res> {
  __$ReadMessageCopyWithImpl(
      _ReadMessage _value, $Res Function(_ReadMessage) _then)
      : super(_value, (v) => _then(v as _ReadMessage));

  @override
  _ReadMessage get _value => super._value as _ReadMessage;

  @override
  $Res call({
    Object? roomId = freezed,
  }) {
    return _then(_ReadMessage(
      roomId: roomId == freezed
          ? _value.roomId
          : roomId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ReadMessage implements _ReadMessage {
  const _$_ReadMessage({required this.roomId});

  @override
  final String roomId;

  @override
  String toString() {
    return 'ChatroomEvent.readMessage(roomId: $roomId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReadMessage &&
            (identical(other.roomId, roomId) || other.roomId == roomId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, roomId);

  @JsonKey(ignore: true)
  @override
  _$ReadMessageCopyWith<_ReadMessage> get copyWith =>
      __$ReadMessageCopyWithImpl<_ReadMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChatRequest chatRequest) getChat,
    required TResult Function(SendChat content, String roomId) sendMessage,
    required TResult Function(String roomId) readMessage,
  }) {
    return readMessage(roomId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ChatRequest chatRequest)? getChat,
    TResult Function(SendChat content, String roomId)? sendMessage,
    TResult Function(String roomId)? readMessage,
  }) {
    return readMessage?.call(roomId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChatRequest chatRequest)? getChat,
    TResult Function(SendChat content, String roomId)? sendMessage,
    TResult Function(String roomId)? readMessage,
    required TResult orElse(),
  }) {
    if (readMessage != null) {
      return readMessage(roomId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetChat value) getChat,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_ReadMessage value) readMessage,
  }) {
    return readMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetChat value)? getChat,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_ReadMessage value)? readMessage,
  }) {
    return readMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetChat value)? getChat,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_ReadMessage value)? readMessage,
    required TResult orElse(),
  }) {
    if (readMessage != null) {
      return readMessage(this);
    }
    return orElse();
  }
}

abstract class _ReadMessage implements ChatroomEvent {
  const factory _ReadMessage({required String roomId}) = _$_ReadMessage;

  String get roomId;
  @JsonKey(ignore: true)
  _$ReadMessageCopyWith<_ReadMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ChatroomStateTearOff {
  const _$ChatroomStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _SendingChat sendingChat() {
    return const _SendingChat();
  }

  _GetChatSuccess getChatSuccess(ChatResponse chatResponse) {
    return _GetChatSuccess(
      chatResponse,
    );
  }

  _Failure failure(ChatFailure failure) {
    return _Failure(
      failure,
    );
  }

  _SendChatSuccess sendChatSuccess(SendChat content) {
    return _SendChatSuccess(
      content,
    );
  }

  _ReadMessageSuccess readMessageSuccess(bool response) {
    return _ReadMessageSuccess(
      response,
    );
  }
}

/// @nodoc
const $ChatroomState = _$ChatroomStateTearOff();

/// @nodoc
mixin _$ChatroomState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() sendingChat,
    required TResult Function(ChatResponse chatResponse) getChatSuccess,
    required TResult Function(ChatFailure failure) failure,
    required TResult Function(SendChat content) sendChatSuccess,
    required TResult Function(bool response) readMessageSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? sendingChat,
    TResult Function(ChatResponse chatResponse)? getChatSuccess,
    TResult Function(ChatFailure failure)? failure,
    TResult Function(SendChat content)? sendChatSuccess,
    TResult Function(bool response)? readMessageSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? sendingChat,
    TResult Function(ChatResponse chatResponse)? getChatSuccess,
    TResult Function(ChatFailure failure)? failure,
    TResult Function(SendChat content)? sendChatSuccess,
    TResult Function(bool response)? readMessageSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SendingChat value) sendingChat,
    required TResult Function(_GetChatSuccess value) getChatSuccess,
    required TResult Function(_Failure value) failure,
    required TResult Function(_SendChatSuccess value) sendChatSuccess,
    required TResult Function(_ReadMessageSuccess value) readMessageSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SendingChat value)? sendingChat,
    TResult Function(_GetChatSuccess value)? getChatSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_SendChatSuccess value)? sendChatSuccess,
    TResult Function(_ReadMessageSuccess value)? readMessageSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SendingChat value)? sendingChat,
    TResult Function(_GetChatSuccess value)? getChatSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_SendChatSuccess value)? sendChatSuccess,
    TResult Function(_ReadMessageSuccess value)? readMessageSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatroomStateCopyWith<$Res> {
  factory $ChatroomStateCopyWith(
          ChatroomState value, $Res Function(ChatroomState) then) =
      _$ChatroomStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatroomStateCopyWithImpl<$Res>
    implements $ChatroomStateCopyWith<$Res> {
  _$ChatroomStateCopyWithImpl(this._value, this._then);

  final ChatroomState _value;
  // ignore: unused_field
  final $Res Function(ChatroomState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ChatroomStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ChatroomState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() sendingChat,
    required TResult Function(ChatResponse chatResponse) getChatSuccess,
    required TResult Function(ChatFailure failure) failure,
    required TResult Function(SendChat content) sendChatSuccess,
    required TResult Function(bool response) readMessageSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? sendingChat,
    TResult Function(ChatResponse chatResponse)? getChatSuccess,
    TResult Function(ChatFailure failure)? failure,
    TResult Function(SendChat content)? sendChatSuccess,
    TResult Function(bool response)? readMessageSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? sendingChat,
    TResult Function(ChatResponse chatResponse)? getChatSuccess,
    TResult Function(ChatFailure failure)? failure,
    TResult Function(SendChat content)? sendChatSuccess,
    TResult Function(bool response)? readMessageSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SendingChat value) sendingChat,
    required TResult Function(_GetChatSuccess value) getChatSuccess,
    required TResult Function(_Failure value) failure,
    required TResult Function(_SendChatSuccess value) sendChatSuccess,
    required TResult Function(_ReadMessageSuccess value) readMessageSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SendingChat value)? sendingChat,
    TResult Function(_GetChatSuccess value)? getChatSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_SendChatSuccess value)? sendChatSuccess,
    TResult Function(_ReadMessageSuccess value)? readMessageSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SendingChat value)? sendingChat,
    TResult Function(_GetChatSuccess value)? getChatSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_SendChatSuccess value)? sendChatSuccess,
    TResult Function(_ReadMessageSuccess value)? readMessageSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ChatroomState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$ChatroomStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'ChatroomState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() sendingChat,
    required TResult Function(ChatResponse chatResponse) getChatSuccess,
    required TResult Function(ChatFailure failure) failure,
    required TResult Function(SendChat content) sendChatSuccess,
    required TResult Function(bool response) readMessageSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? sendingChat,
    TResult Function(ChatResponse chatResponse)? getChatSuccess,
    TResult Function(ChatFailure failure)? failure,
    TResult Function(SendChat content)? sendChatSuccess,
    TResult Function(bool response)? readMessageSuccess,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? sendingChat,
    TResult Function(ChatResponse chatResponse)? getChatSuccess,
    TResult Function(ChatFailure failure)? failure,
    TResult Function(SendChat content)? sendChatSuccess,
    TResult Function(bool response)? readMessageSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SendingChat value) sendingChat,
    required TResult Function(_GetChatSuccess value) getChatSuccess,
    required TResult Function(_Failure value) failure,
    required TResult Function(_SendChatSuccess value) sendChatSuccess,
    required TResult Function(_ReadMessageSuccess value) readMessageSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SendingChat value)? sendingChat,
    TResult Function(_GetChatSuccess value)? getChatSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_SendChatSuccess value)? sendChatSuccess,
    TResult Function(_ReadMessageSuccess value)? readMessageSuccess,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SendingChat value)? sendingChat,
    TResult Function(_GetChatSuccess value)? getChatSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_SendChatSuccess value)? sendChatSuccess,
    TResult Function(_ReadMessageSuccess value)? readMessageSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ChatroomState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$SendingChatCopyWith<$Res> {
  factory _$SendingChatCopyWith(
          _SendingChat value, $Res Function(_SendingChat) then) =
      __$SendingChatCopyWithImpl<$Res>;
}

/// @nodoc
class __$SendingChatCopyWithImpl<$Res> extends _$ChatroomStateCopyWithImpl<$Res>
    implements _$SendingChatCopyWith<$Res> {
  __$SendingChatCopyWithImpl(
      _SendingChat _value, $Res Function(_SendingChat) _then)
      : super(_value, (v) => _then(v as _SendingChat));

  @override
  _SendingChat get _value => super._value as _SendingChat;
}

/// @nodoc

class _$_SendingChat implements _SendingChat {
  const _$_SendingChat();

  @override
  String toString() {
    return 'ChatroomState.sendingChat()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SendingChat);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() sendingChat,
    required TResult Function(ChatResponse chatResponse) getChatSuccess,
    required TResult Function(ChatFailure failure) failure,
    required TResult Function(SendChat content) sendChatSuccess,
    required TResult Function(bool response) readMessageSuccess,
  }) {
    return sendingChat();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? sendingChat,
    TResult Function(ChatResponse chatResponse)? getChatSuccess,
    TResult Function(ChatFailure failure)? failure,
    TResult Function(SendChat content)? sendChatSuccess,
    TResult Function(bool response)? readMessageSuccess,
  }) {
    return sendingChat?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? sendingChat,
    TResult Function(ChatResponse chatResponse)? getChatSuccess,
    TResult Function(ChatFailure failure)? failure,
    TResult Function(SendChat content)? sendChatSuccess,
    TResult Function(bool response)? readMessageSuccess,
    required TResult orElse(),
  }) {
    if (sendingChat != null) {
      return sendingChat();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SendingChat value) sendingChat,
    required TResult Function(_GetChatSuccess value) getChatSuccess,
    required TResult Function(_Failure value) failure,
    required TResult Function(_SendChatSuccess value) sendChatSuccess,
    required TResult Function(_ReadMessageSuccess value) readMessageSuccess,
  }) {
    return sendingChat(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SendingChat value)? sendingChat,
    TResult Function(_GetChatSuccess value)? getChatSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_SendChatSuccess value)? sendChatSuccess,
    TResult Function(_ReadMessageSuccess value)? readMessageSuccess,
  }) {
    return sendingChat?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SendingChat value)? sendingChat,
    TResult Function(_GetChatSuccess value)? getChatSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_SendChatSuccess value)? sendChatSuccess,
    TResult Function(_ReadMessageSuccess value)? readMessageSuccess,
    required TResult orElse(),
  }) {
    if (sendingChat != null) {
      return sendingChat(this);
    }
    return orElse();
  }
}

abstract class _SendingChat implements ChatroomState {
  const factory _SendingChat() = _$_SendingChat;
}

/// @nodoc
abstract class _$GetChatSuccessCopyWith<$Res> {
  factory _$GetChatSuccessCopyWith(
          _GetChatSuccess value, $Res Function(_GetChatSuccess) then) =
      __$GetChatSuccessCopyWithImpl<$Res>;
  $Res call({ChatResponse chatResponse});

  $ChatResponseCopyWith<$Res> get chatResponse;
}

/// @nodoc
class __$GetChatSuccessCopyWithImpl<$Res>
    extends _$ChatroomStateCopyWithImpl<$Res>
    implements _$GetChatSuccessCopyWith<$Res> {
  __$GetChatSuccessCopyWithImpl(
      _GetChatSuccess _value, $Res Function(_GetChatSuccess) _then)
      : super(_value, (v) => _then(v as _GetChatSuccess));

  @override
  _GetChatSuccess get _value => super._value as _GetChatSuccess;

  @override
  $Res call({
    Object? chatResponse = freezed,
  }) {
    return _then(_GetChatSuccess(
      chatResponse == freezed
          ? _value.chatResponse
          : chatResponse // ignore: cast_nullable_to_non_nullable
              as ChatResponse,
    ));
  }

  @override
  $ChatResponseCopyWith<$Res> get chatResponse {
    return $ChatResponseCopyWith<$Res>(_value.chatResponse, (value) {
      return _then(_value.copyWith(chatResponse: value));
    });
  }
}

/// @nodoc

class _$_GetChatSuccess implements _GetChatSuccess {
  const _$_GetChatSuccess(this.chatResponse);

  @override
  final ChatResponse chatResponse;

  @override
  String toString() {
    return 'ChatroomState.getChatSuccess(chatResponse: $chatResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetChatSuccess &&
            (identical(other.chatResponse, chatResponse) ||
                other.chatResponse == chatResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatResponse);

  @JsonKey(ignore: true)
  @override
  _$GetChatSuccessCopyWith<_GetChatSuccess> get copyWith =>
      __$GetChatSuccessCopyWithImpl<_GetChatSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() sendingChat,
    required TResult Function(ChatResponse chatResponse) getChatSuccess,
    required TResult Function(ChatFailure failure) failure,
    required TResult Function(SendChat content) sendChatSuccess,
    required TResult Function(bool response) readMessageSuccess,
  }) {
    return getChatSuccess(chatResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? sendingChat,
    TResult Function(ChatResponse chatResponse)? getChatSuccess,
    TResult Function(ChatFailure failure)? failure,
    TResult Function(SendChat content)? sendChatSuccess,
    TResult Function(bool response)? readMessageSuccess,
  }) {
    return getChatSuccess?.call(chatResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? sendingChat,
    TResult Function(ChatResponse chatResponse)? getChatSuccess,
    TResult Function(ChatFailure failure)? failure,
    TResult Function(SendChat content)? sendChatSuccess,
    TResult Function(bool response)? readMessageSuccess,
    required TResult orElse(),
  }) {
    if (getChatSuccess != null) {
      return getChatSuccess(chatResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SendingChat value) sendingChat,
    required TResult Function(_GetChatSuccess value) getChatSuccess,
    required TResult Function(_Failure value) failure,
    required TResult Function(_SendChatSuccess value) sendChatSuccess,
    required TResult Function(_ReadMessageSuccess value) readMessageSuccess,
  }) {
    return getChatSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SendingChat value)? sendingChat,
    TResult Function(_GetChatSuccess value)? getChatSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_SendChatSuccess value)? sendChatSuccess,
    TResult Function(_ReadMessageSuccess value)? readMessageSuccess,
  }) {
    return getChatSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SendingChat value)? sendingChat,
    TResult Function(_GetChatSuccess value)? getChatSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_SendChatSuccess value)? sendChatSuccess,
    TResult Function(_ReadMessageSuccess value)? readMessageSuccess,
    required TResult orElse(),
  }) {
    if (getChatSuccess != null) {
      return getChatSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetChatSuccess implements ChatroomState {
  const factory _GetChatSuccess(ChatResponse chatResponse) = _$_GetChatSuccess;

  ChatResponse get chatResponse;
  @JsonKey(ignore: true)
  _$GetChatSuccessCopyWith<_GetChatSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailureCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) then) =
      __$FailureCopyWithImpl<$Res>;
  $Res call({ChatFailure failure});

  $ChatFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$FailureCopyWithImpl<$Res> extends _$ChatroomStateCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(_Failure _value, $Res Function(_Failure) _then)
      : super(_value, (v) => _then(v as _Failure));

  @override
  _Failure get _value => super._value as _Failure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_Failure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ChatFailure,
    ));
  }

  @override
  $ChatFailureCopyWith<$Res> get failure {
    return $ChatFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure(this.failure);

  @override
  final ChatFailure failure;

  @override
  String toString() {
    return 'ChatroomState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Failure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  _$FailureCopyWith<_Failure> get copyWith =>
      __$FailureCopyWithImpl<_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() sendingChat,
    required TResult Function(ChatResponse chatResponse) getChatSuccess,
    required TResult Function(ChatFailure failure) failure,
    required TResult Function(SendChat content) sendChatSuccess,
    required TResult Function(bool response) readMessageSuccess,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? sendingChat,
    TResult Function(ChatResponse chatResponse)? getChatSuccess,
    TResult Function(ChatFailure failure)? failure,
    TResult Function(SendChat content)? sendChatSuccess,
    TResult Function(bool response)? readMessageSuccess,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? sendingChat,
    TResult Function(ChatResponse chatResponse)? getChatSuccess,
    TResult Function(ChatFailure failure)? failure,
    TResult Function(SendChat content)? sendChatSuccess,
    TResult Function(bool response)? readMessageSuccess,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SendingChat value) sendingChat,
    required TResult Function(_GetChatSuccess value) getChatSuccess,
    required TResult Function(_Failure value) failure,
    required TResult Function(_SendChatSuccess value) sendChatSuccess,
    required TResult Function(_ReadMessageSuccess value) readMessageSuccess,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SendingChat value)? sendingChat,
    TResult Function(_GetChatSuccess value)? getChatSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_SendChatSuccess value)? sendChatSuccess,
    TResult Function(_ReadMessageSuccess value)? readMessageSuccess,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SendingChat value)? sendingChat,
    TResult Function(_GetChatSuccess value)? getChatSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_SendChatSuccess value)? sendChatSuccess,
    TResult Function(_ReadMessageSuccess value)? readMessageSuccess,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements ChatroomState {
  const factory _Failure(ChatFailure failure) = _$_Failure;

  ChatFailure get failure;
  @JsonKey(ignore: true)
  _$FailureCopyWith<_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SendChatSuccessCopyWith<$Res> {
  factory _$SendChatSuccessCopyWith(
          _SendChatSuccess value, $Res Function(_SendChatSuccess) then) =
      __$SendChatSuccessCopyWithImpl<$Res>;
  $Res call({SendChat content});

  $SendChatCopyWith<$Res> get content;
}

/// @nodoc
class __$SendChatSuccessCopyWithImpl<$Res>
    extends _$ChatroomStateCopyWithImpl<$Res>
    implements _$SendChatSuccessCopyWith<$Res> {
  __$SendChatSuccessCopyWithImpl(
      _SendChatSuccess _value, $Res Function(_SendChatSuccess) _then)
      : super(_value, (v) => _then(v as _SendChatSuccess));

  @override
  _SendChatSuccess get _value => super._value as _SendChatSuccess;

  @override
  $Res call({
    Object? content = freezed,
  }) {
    return _then(_SendChatSuccess(
      content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as SendChat,
    ));
  }

  @override
  $SendChatCopyWith<$Res> get content {
    return $SendChatCopyWith<$Res>(_value.content, (value) {
      return _then(_value.copyWith(content: value));
    });
  }
}

/// @nodoc

class _$_SendChatSuccess implements _SendChatSuccess {
  const _$_SendChatSuccess(this.content);

  @override
  final SendChat content;

  @override
  String toString() {
    return 'ChatroomState.sendChatSuccess(content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SendChatSuccess &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, content);

  @JsonKey(ignore: true)
  @override
  _$SendChatSuccessCopyWith<_SendChatSuccess> get copyWith =>
      __$SendChatSuccessCopyWithImpl<_SendChatSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() sendingChat,
    required TResult Function(ChatResponse chatResponse) getChatSuccess,
    required TResult Function(ChatFailure failure) failure,
    required TResult Function(SendChat content) sendChatSuccess,
    required TResult Function(bool response) readMessageSuccess,
  }) {
    return sendChatSuccess(content);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? sendingChat,
    TResult Function(ChatResponse chatResponse)? getChatSuccess,
    TResult Function(ChatFailure failure)? failure,
    TResult Function(SendChat content)? sendChatSuccess,
    TResult Function(bool response)? readMessageSuccess,
  }) {
    return sendChatSuccess?.call(content);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? sendingChat,
    TResult Function(ChatResponse chatResponse)? getChatSuccess,
    TResult Function(ChatFailure failure)? failure,
    TResult Function(SendChat content)? sendChatSuccess,
    TResult Function(bool response)? readMessageSuccess,
    required TResult orElse(),
  }) {
    if (sendChatSuccess != null) {
      return sendChatSuccess(content);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SendingChat value) sendingChat,
    required TResult Function(_GetChatSuccess value) getChatSuccess,
    required TResult Function(_Failure value) failure,
    required TResult Function(_SendChatSuccess value) sendChatSuccess,
    required TResult Function(_ReadMessageSuccess value) readMessageSuccess,
  }) {
    return sendChatSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SendingChat value)? sendingChat,
    TResult Function(_GetChatSuccess value)? getChatSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_SendChatSuccess value)? sendChatSuccess,
    TResult Function(_ReadMessageSuccess value)? readMessageSuccess,
  }) {
    return sendChatSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SendingChat value)? sendingChat,
    TResult Function(_GetChatSuccess value)? getChatSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_SendChatSuccess value)? sendChatSuccess,
    TResult Function(_ReadMessageSuccess value)? readMessageSuccess,
    required TResult orElse(),
  }) {
    if (sendChatSuccess != null) {
      return sendChatSuccess(this);
    }
    return orElse();
  }
}

abstract class _SendChatSuccess implements ChatroomState {
  const factory _SendChatSuccess(SendChat content) = _$_SendChatSuccess;

  SendChat get content;
  @JsonKey(ignore: true)
  _$SendChatSuccessCopyWith<_SendChatSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ReadMessageSuccessCopyWith<$Res> {
  factory _$ReadMessageSuccessCopyWith(
          _ReadMessageSuccess value, $Res Function(_ReadMessageSuccess) then) =
      __$ReadMessageSuccessCopyWithImpl<$Res>;
  $Res call({bool response});
}

/// @nodoc
class __$ReadMessageSuccessCopyWithImpl<$Res>
    extends _$ChatroomStateCopyWithImpl<$Res>
    implements _$ReadMessageSuccessCopyWith<$Res> {
  __$ReadMessageSuccessCopyWithImpl(
      _ReadMessageSuccess _value, $Res Function(_ReadMessageSuccess) _then)
      : super(_value, (v) => _then(v as _ReadMessageSuccess));

  @override
  _ReadMessageSuccess get _value => super._value as _ReadMessageSuccess;

  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_ReadMessageSuccess(
      response == freezed
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ReadMessageSuccess implements _ReadMessageSuccess {
  const _$_ReadMessageSuccess(this.response);

  @override
  final bool response;

  @override
  String toString() {
    return 'ChatroomState.readMessageSuccess(response: $response)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReadMessageSuccess &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  _$ReadMessageSuccessCopyWith<_ReadMessageSuccess> get copyWith =>
      __$ReadMessageSuccessCopyWithImpl<_ReadMessageSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() sendingChat,
    required TResult Function(ChatResponse chatResponse) getChatSuccess,
    required TResult Function(ChatFailure failure) failure,
    required TResult Function(SendChat content) sendChatSuccess,
    required TResult Function(bool response) readMessageSuccess,
  }) {
    return readMessageSuccess(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? sendingChat,
    TResult Function(ChatResponse chatResponse)? getChatSuccess,
    TResult Function(ChatFailure failure)? failure,
    TResult Function(SendChat content)? sendChatSuccess,
    TResult Function(bool response)? readMessageSuccess,
  }) {
    return readMessageSuccess?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? sendingChat,
    TResult Function(ChatResponse chatResponse)? getChatSuccess,
    TResult Function(ChatFailure failure)? failure,
    TResult Function(SendChat content)? sendChatSuccess,
    TResult Function(bool response)? readMessageSuccess,
    required TResult orElse(),
  }) {
    if (readMessageSuccess != null) {
      return readMessageSuccess(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SendingChat value) sendingChat,
    required TResult Function(_GetChatSuccess value) getChatSuccess,
    required TResult Function(_Failure value) failure,
    required TResult Function(_SendChatSuccess value) sendChatSuccess,
    required TResult Function(_ReadMessageSuccess value) readMessageSuccess,
  }) {
    return readMessageSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SendingChat value)? sendingChat,
    TResult Function(_GetChatSuccess value)? getChatSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_SendChatSuccess value)? sendChatSuccess,
    TResult Function(_ReadMessageSuccess value)? readMessageSuccess,
  }) {
    return readMessageSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SendingChat value)? sendingChat,
    TResult Function(_GetChatSuccess value)? getChatSuccess,
    TResult Function(_Failure value)? failure,
    TResult Function(_SendChatSuccess value)? sendChatSuccess,
    TResult Function(_ReadMessageSuccess value)? readMessageSuccess,
    required TResult orElse(),
  }) {
    if (readMessageSuccess != null) {
      return readMessageSuccess(this);
    }
    return orElse();
  }
}

abstract class _ReadMessageSuccess implements ChatroomState {
  const factory _ReadMessageSuccess(bool response) = _$_ReadMessageSuccess;

  bool get response;
  @JsonKey(ignore: true)
  _$ReadMessageSuccessCopyWith<_ReadMessageSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
