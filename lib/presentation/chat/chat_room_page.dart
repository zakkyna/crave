import 'dart:convert';

import 'package:crave_app/domain/core/theme/theme.dart';
import 'package:crave_app/presentation/core/widget/spacing.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mime/mime.dart';
import 'package:open_file/open_file.dart';
import 'package:uuid/uuid.dart';

// class ChatRoomPage extends GetView<ChatRoomController> {
//   const ChatRoomPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     Get.put(ChatRoomController());
//     return Scaffold(
//       body: Obx(
//         () => Chat(
//           theme: const DefaultChatTheme(
//             primaryColor: AppColors.mainColor,
//             inputTextColor: Colors.black,
//             secondaryColor: Colors.grey,
//             sentMessageDocumentIconColor: Colors.black,
//             inputBackgroundColor: Colors.white,
//           ),
//           showUserAvatars: true,
//           messages: controller.messages.value,
//           onSendPressed: controller.handleSendPressed,
//           user: controller.user,
//         ),
//       ),
//     );
//   }
// }

class ChatRoomPage extends StatefulWidget {
  const ChatRoomPage({Key? key}) : super(key: key);

  @override
  _ChatRoomPageState createState() => _ChatRoomPageState();
}

class _ChatRoomPageState extends State<ChatRoomPage> {
  List<types.Message> _messages = [];
  final _user = const types.User(id: '06c33e8b-e835-4736-80f4-63f44b66666c');

  @override
  void initState() {
    super.initState();
    _loadMessages();
  }

  void _addMessage(types.Message message) {
    setState(() {
      _messages.insert(0, message);
    });
  }

  void _handleAtachmentPressed() {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: SizedBox(
            height: 144,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    _handleImageSelection();
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Photo'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    _handleFileSelection();
                  },
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('File'),
                  ),
                ),
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text('Cancel'),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _handleFileSelection() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.any,
    );

    if (result != null && result.files.single.path != null) {
      final message = types.FileMessage(
        author: _user,
        createdAt: DateTime.now().millisecondsSinceEpoch,
        id: const Uuid().v4(),
        mimeType: lookupMimeType(result.files.single.path!),
        name: result.files.single.name,
        size: result.files.single.size,
        uri: result.files.single.path!,
      );

      _addMessage(message);
    }
  }

  void _handleImageSelection() async {
    final result = await ImagePicker().pickImage(
      imageQuality: 70,
      maxWidth: 1440,
      source: ImageSource.gallery,
    );

    if (result != null) {
      final bytes = await result.readAsBytes();
      final image = await decodeImageFromList(bytes);

      final message = types.ImageMessage(
        author: _user,
        createdAt: DateTime.now().millisecondsSinceEpoch,
        height: image.height.toDouble(),
        id: const Uuid().v4(),
        name: result.name,
        size: bytes.length,
        uri: result.path,
        width: image.width.toDouble(),
      );

      _addMessage(message);
    }
  }

  void _handleMessageTap(types.Message message) async {
    if (message is types.FileMessage) {
      await OpenFile.open(message.uri);
    }
  }

  void _handlePreviewDataFetched(
    types.TextMessage message,
    types.PreviewData previewData,
  ) {
    final index = _messages.indexWhere((element) => element.id == message.id);
    final updatedMessage = _messages[index].copyWith(previewData: previewData);

    WidgetsBinding.instance?.addPostFrameCallback((_) {
      setState(() {
        _messages[index] = updatedMessage;
      });
    });
  }

  void _handleSendPressed(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: _user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: const Uuid().v4(),
      text: message.text,
    );

    _addMessage(textMessage);
  }

  void _loadMessages() async {
    final response = await rootBundle.loadString('assets/messages.json');
    final messages = (jsonDecode(response) as List)
        .map((e) => types.Message.fromJson(e as Map<String, dynamic>))
        .toList();

    setState(() {
      _messages = messages;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
      ),
    );
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: Dimens.defaultMargin,
                vertical: 15,
              ),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Get.back(),
                    child: const Icon(
                      Icons.arrow_back_ios,
                    ),
                  ),
                  addHorizontalSpace(20),
                  CircleAvatar(
                    radius: 20.r,
                    backgroundColor: Colors.white,
                    child: Stack(
                      children: [
                        const Positioned.fill(
                          child: CircularProgressIndicator(
                            value: 0.8,
                            valueColor:
                                AlwaysStoppedAnimation(AppColors.mainColor),
                          ),
                        ),
                        Positioned.fill(
                          child: CircleAvatar(
                            radius: 10.r,
                            backgroundColor: AppColors.greyBackground,
                            child: const Icon(
                              Icons.person,
                              color: Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  addHorizontalSpace(20),
                  Expanded(
                    child: Text(
                      '38 min left',
                    ),
                  ),
                  Material(
                    child: InkWell(
                      onTap: () {},
                      child: Ink(
                        child: CircleAvatar(
                          radius: 15.r,
                          child: SvgPicture.asset(
                            'assets/icon/extend_time_icon.svg',
                          ),
                        ),
                      ),
                    ),
                  ),
                  addHorizontalSpace(20),
                  Material(
                    child: InkWell(
                      onTap: () {},
                      child: Ink(
                        child: CircleAvatar(
                          radius: 15.r,
                          child: SvgPicture.asset(
                            'assets/icon/video_call_icon.svg',
                          ),
                        ),
                      ),
                    ),
                  ),
                  addHorizontalSpace(20),
                  Material(
                    child: InkWell(
                      onTap: () {},
                      child: Ink(
                        child: CircleAvatar(
                          backgroundColor: const Color(0xFFFF6278),
                          radius: 15.r,
                          child: SvgPicture.asset(
                            'assets/icon/flag_icon.svg',
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Chat(
                messages: _messages,
                theme: DefaultChatTheme(
                  primaryColor: AppColors.mainColor,
                  inputTextColor: Colors.black,
                  secondaryColor: Colors.grey,
                  inputBackgroundColor: Colors.white,
                  inputTextDecoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.r),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                  ),
                  attachmentButtonIcon: const Icon(Icons.add),
                ),
                showUserAvatars: true,
                sendButtonVisibilityMode: SendButtonVisibilityMode.always,
                onAttachmentPressed: _handleAtachmentPressed,
                onMessageTap: _handleMessageTap,
                onPreviewDataFetched: _handlePreviewDataFetched,
                onSendPressed: _handleSendPressed,
                user: _user,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
