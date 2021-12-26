import 'package:get/get.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:uuid/uuid.dart';

class ChatRoomController extends GetxController {
  final messages = Rx<List<types.Message>>([]);
  final user = types.User(
    id: '06c33e8b-e835-4736-80f4-63f44b66666c',
  );
  final user2 = types.User(
    id: '06c33e8b-e835-4736-80f4-63f44b66666c',
  );

  void addMessage(types.Message message) {
    messages.value.insert(0, message);
  }

  void handleSendPressed(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: user2,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: const Uuid().v4(),
      text: message.text,
    );

    addMessage(textMessage);
  }
}
