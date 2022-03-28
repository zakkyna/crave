import 'dart:async';

import 'package:crave_app/application/chat/chatroom/chatroom_bloc.dart';
import 'package:crave_app/domain/chat/chat_failure.dart';
import 'package:crave_app/domain/chat/room_model.dart';
import 'package:crave_app/domain/chat/send_chat.dart';
import 'package:crave_app/domain/profile/profile.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:get/get.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mime/mime.dart';
import 'package:open_file/open_file.dart';
import 'package:uuid/uuid.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatRoomController extends GetxController {
  final RoomModel roomModel;
  ChatRoomController({
    required this.roomModel,
  });

  Rx<List<Message>> messages = Rx<List<Message>>([]);

  Rxn<Stream<List<Message>>> messageStream = Rxn<Stream<List<Message>>>();

  ValueNotifier<bool> isDialOpen = ValueNotifier(false);

  Rxn<Profile> currentProfile = Rxn<Profile>();

  addMessage(Message message) {
    messages.value.insert(0, message);
    update();
  }

  sendMessage(Message message) {
    final content = SendChat(message: message);
    final userId = currentProfile.value?.uid;
    final opponentId =
        roomModel.memberIds.firstWhereOrNull((element) => element != userId);
    if (userId == null || opponentId == null) {
      return;
    }
    Get.context!.read<ChatroomBloc>().add(
          ChatroomEvent.sendMessage(
            content: content,
            roomId: roomModel.id,
            opponentId: opponentId,
          ),
        );
  }

  handleAtachmentPressed() {
    update();
    // showModalBottomSheet<void>(
    //   context: Get.context!,
    //   builder: (BuildContext context) {
    //     return SafeArea(
    //       child: SizedBox(
    //         height: 144.h,
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.stretch,
    //           children: <Widget>[
    //             TextButton(
    //               onPressed: () {
    //                 Navigator.pop(context);
    //                 handleImageSelection();
    //               },
    //               child: const Align(
    //                 alignment: Alignment.centerLeft,
    //                 child: Text('Photo'),
    //               ),
    //             ),
    //             TextButton(
    //               onPressed: () {
    //                 Navigator.pop(context);
    //                 handleFileSelection();
    //               },
    //               child: const Align(
    //                 alignment: Alignment.centerLeft,
    //                 child: Text('File'),
    //               ),
    //             ),
    //             TextButton(
    //               onPressed: () => Navigator.pop(context),
    //               child: const Align(
    //                 alignment: Alignment.centerLeft,
    //                 child: Text('Cancel'),
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //     );
    //   },
    // );
  }

  handleFileSelection() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.video,
    );

    if (result != null && result.files.single.path != null) {
      final _completer = Completer<Either<ChatFailure, String>>();
      Get.context!.read<ChatroomBloc>().add(
            ChatroomEvent.uploadAttachment(
              roomId: roomModel.id,
              path: result.files.single.path!,
            ),
          );
      final uploadStream =
          Get.context!.read<ChatroomBloc>().stream.listen((state) {
        state.maybeMap(
          uploadAttachmentSuccess: (value) {
            _completer.complete(right(value.url));
          },
          failure: (value) {
            _completer.complete(left(value.failure));
          },
          orElse: () {},
        );
      });
      final failureOrSuccess = await _completer.future.then((value) {
        uploadStream.cancel();
        return value;
      });

      final filePath = failureOrSuccess.fold(
        (l) => null,
        (r) => r,
      );
      if (filePath != null) {
        final message = FileMessage(
          author: currentProfile.value!.toTypes(),
          createdAt: DateTime.now().millisecondsSinceEpoch,
          id: const Uuid().v4(),
          mimeType: lookupMimeType(result.files.single.path!),
          name: result.files.single.name,
          size: result.files.single.size,
          uri: filePath,
        );

        sendMessage(message);
      }
    }
  }

  handleImageSelection() async {
    final result = await ImagePicker().pickImage(
      imageQuality: 70,
      maxWidth: 1440,
      source: ImageSource.gallery,
    );

    if (result != null) {
      final bytes = await result.readAsBytes();
      final image = await decodeImageFromList(bytes);
      final _completer = Completer<Either<ChatFailure, String>>();
      Get.context!.read<ChatroomBloc>().add(
            ChatroomEvent.uploadAttachment(
              roomId: roomModel.id,
              path: result.path,
            ),
          );
      final uploadStream =
          Get.context!.read<ChatroomBloc>().stream.listen((state) {
        state.maybeMap(
          uploadAttachmentSuccess: (value) {
            _completer.complete(right(value.url));
          },
          failure: (value) {
            _completer.complete(left(value.failure));
          },
          orElse: () {},
        );
      });
      final failureOrSuccess = await _completer.future.then((value) {
        uploadStream.cancel();
        return value;
      });

      final filePath = failureOrSuccess.fold(
        (l) => null,
        (r) => r,
      );
      if (filePath != null) {
        final message = ImageMessage(
          author: currentProfile.value!.toTypes(),
          createdAt: DateTime.now().millisecondsSinceEpoch,
          height: image.height.toDouble(),
          id: const Uuid().v4(),
          name: result.name,
          size: bytes.length,
          uri: filePath,
          width: image.width.toDouble(),
        );
        sendMessage(message);
      }
    }
  }

  handleCameraSelection() async {
    final result = await ImagePicker().pickImage(
      imageQuality: 70,
      maxWidth: 1440,
      source: ImageSource.camera,
    );

    if (result != null) {
      final bytes = await result.readAsBytes();
      final image = await decodeImageFromList(bytes);
      final _completer = Completer<Either<ChatFailure, String>>();
      Get.context!.read<ChatroomBloc>().add(
            ChatroomEvent.uploadAttachment(
              roomId: roomModel.id,
              path: result.path,
            ),
          );
      final uploadStream =
          Get.context!.read<ChatroomBloc>().stream.listen((state) {
        state.maybeMap(
          uploadAttachmentSuccess: (value) {
            _completer.complete(right(value.url));
          },
          failure: (value) {
            _completer.complete(left(value.failure));
          },
          orElse: () {},
        );
      });
      final failureOrSuccess = await _completer.future.then((value) {
        uploadStream.cancel();
        return value;
      });

      final filePath = failureOrSuccess.fold(
        (l) => null,
        (r) => r,
      );

      if (filePath != null) {
        final message = ImageMessage(
          author: currentProfile.value!.toTypes(),
          createdAt: DateTime.now().millisecondsSinceEpoch,
          height: image.height.toDouble(),
          id: const Uuid().v4(),
          name: result.name,
          size: bytes.length,
          uri: result.path,
          width: image.width.toDouble(),
        );

        sendMessage(message);
      }
    }
  }

  handleMessageTap(Message message) async {
    if (message is FileMessage) {
      await OpenFile.open(message.uri);
    }
  }

  handlePreviewDataFetched(
    TextMessage message,
    PreviewData previewData,
  ) {
    final index =
        messages.value.indexWhere((element) => element.id == message.id);
    final updatedMessage =
        messages.value[index].copyWith(previewData: previewData);

    messages.value[index] = updatedMessage;
    update();
  }

  handleSendPressed(PartialText message) {
    final textMessage = TextMessage(
      author: currentProfile.value!.toTypes(),
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: const Uuid().v4(),
      text: message.text,
    );

    sendMessage(textMessage);
  }

  loadMessages(Stream<List<Message>> value) async {
    // final _messages =
    //     value.map((e) => Message.fromJson(e.toJson())).toList();
    // messages.value = _messages;
    messageStream.value = value;
    update();
  }
}
