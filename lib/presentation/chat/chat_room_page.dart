import 'package:cached_network_image/cached_network_image.dart';
import 'package:crave_app/application/chat/chatroom/chatroom_bloc.dart';
import 'package:crave_app/application/chat/chatroom_controller.dart';
import 'package:crave_app/domain/chat/chat_request.dart';
import 'package:crave_app/domain/chat/room_model.dart';
import 'package:crave_app/domain/core/theme/theme.dart';
import 'package:crave_app/domain/profile/profile.dart';
import 'package:crave_app/presentation/chat/view_profile_page.dart';
import 'package:crave_app/presentation/core/widget/spacing.dart';
import 'package:crave_app/presentation/core/widget/stack_with_progress.dart';
import 'package:custom_pop_up_menu/custom_pop_up_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

class ChatRoomPage extends StatelessWidget {
  final RoomModel roomModel;
  final Profile currentProfile;
  const ChatRoomPage(
      {Key? key, required this.roomModel, required this.currentProfile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(
      ChatRoomController(
        roomModel: roomModel,
      ),
    );
    final extendChatController = CustomPopupMenuController();
    final reportController = CustomPopupMenuController();
    final room = roomModel.toTypes(currentProfile.uid);
    final expiredDiff = (24 -
        (DateTime.now().difference(roomModel.createdAt.toDate()).inHours));
    final expiredDiffInMinutes = ((24 * 60) -
        (DateTime.now().difference(roomModel.createdAt.toDate()).inMinutes));
    final expiredRemaining = expiredDiff < 0 ? 0 : expiredDiff;
    final indicatorRemaining = (expiredRemaining * 100 / 24) * 0.01;
    final colorRemaining = indicatorRemaining < 0.4
        ? Colors.red
        : expiredRemaining < 0.7
            ? Colors.orange
            : Colors.green;
    final isExpired = expiredRemaining <= 0;
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
      ),
    );
    return Scaffold(
      backgroundColor: Colors.black,
      body: BlocListener<ChatroomBloc, ChatroomState>(
        bloc: context.read<ChatroomBloc>()
          ..add(
            ChatroomEvent.getChat(
              ChatRequest(
                roomId: roomModel.id,
              ),
            ),
          )
          ..add(
            ChatroomEvent.readMessage(
              roomId: roomModel.id,
            ),
          ),
        listener: (context, state) {
          state.maybeMap(
            initial: (_) {},
            loading: (_) {},
            getChatSuccess: (_state) {
              controller.currentProfile.value = currentProfile;
              controller.loadMessages(_state.chatResponse.chatsStream);
            },
            sendChatSuccess: (_state) {
              controller.addMessage(_state.content.message);
            },
            viewProfileSuccess: (_state) {
              Get.to(
                ViewProfilePage(
                  _state.post,
                ),
              );
            },
            orElse: () {},
          );
        },
        child: SafeArea(
          child: StackWithProgress(
            isLoading: isExpired,
            loadingWidget: Center(
              child: Text(
                'Chat Expired',
                style: Styles.kefa14Regular.copyWith(
                  color: Colors.white,
                ),
              ),
            ),
            children: [
              Column(
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
                        AddHorizontalSpace(20.h),
                        GestureDetector(
                          onTap: context.read<ChatroomBloc>().state.maybeMap(
                                    loading: (_) => true,
                                    orElse: () => false,
                                  )
                              ? null
                              : () {
                                  context.read<ChatroomBloc>().add(
                                        ChatroomEvent.viewProfile(
                                          userId:
                                              roomModel.memberIds.firstWhere(
                                            (element) =>
                                                element != currentProfile.uid,
                                          ),
                                        ),
                                      );
                                },
                          child: CircleAvatar(
                            radius: 25.r,
                            backgroundColor: Colors.white,
                            child: Stack(
                              children: [
                                Positioned.fill(
                                  child: CircularProgressIndicator(
                                    value: indicatorRemaining,
                                    strokeWidth: 3,
                                    valueColor:
                                        AlwaysStoppedAnimation(colorRemaining),
                                  ),
                                ),
                                Positioned.fill(
                                  child: CircleAvatar(
                                    radius: 12.r,
                                    backgroundImage: CachedNetworkImageProvider(
                                        room.imageUrl!),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        AddHorizontalSpace(20),
                        Expanded(
                          child: Text(
                            isExpired
                                ? 'Chat Room Expired'
                                : expiredRemaining > 1
                                    ? '$expiredRemaining hour left'
                                    : '$expiredDiffInMinutes min left',
                          ),
                        ),
                        CustomPopupMenu(
                          controller: extendChatController,
                          menuBuilder: () {
                            return GestureDetector(
                              onTap: () {
                                extendChatController.hideMenu();
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 18.w,
                                  vertical: 10.h,
                                ),
                                decoration: BoxDecoration(
                                  color: AppColors.mainColor2,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  'Extend Chat Timer',
                                  style: Styles.sfProDisplay.copyWith(
                                    color: Colors.white,
                                    fontSize: 12.sp,
                                  ),
                                ),
                              ),
                            );
                          },
                          pressType: PressType.singleClick,
                          arrowSize: 16.w,
                          arrowColor: AppColors.mainColor2,
                          child: CircleAvatar(
                            radius: 15.r,
                            child: SvgPicture.asset(
                              'assets/icon/extend_time_icon.svg',
                            ),
                          ),
                        ),
                        AddHorizontalSpace(20),
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
                        AddHorizontalSpace(20),
                        CustomPopupMenu(
                          menuBuilder: () {
                            return GestureDetector(
                              onTap: () {
                                reportController.hideMenu();
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 18.w,
                                  vertical: 10.h,
                                ),
                                decoration: BoxDecoration(
                                  color: AppColors.mainColor2,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  'Report',
                                  style: Styles.sfProDisplay.copyWith(
                                    color: Colors.white,
                                    fontSize: 12.sp,
                                  ),
                                ),
                              ),
                            );
                          },
                          pressType: PressType.singleClick,
                          arrowSize: 16.w,
                          arrowColor: AppColors.mainColor2,
                          controller: reportController,
                          child: CircleAvatar(
                            backgroundColor: const Color(0xFFFF6278),
                            radius: 15.r,
                            child: SvgPicture.asset(
                              'assets/icon/flag_icon.svg',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Obx(
                      () => StreamBuilder<List<types.Message>>(
                        stream: controller.messageStream.value,
                        builder: (context, snapshot) => Chat(
                          messages: snapshot.data ?? [],
                          theme: DefaultChatTheme(
                            primaryColor: AppColors.mainColor,
                            inputTextColor: Colors.black,
                            secondaryColor: AppColors.greyBackground,
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
                            sendButtonIcon: OverflowBox(
                              maxHeight: 60.h,
                              maxWidth: 60.w,
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.mainColor2,
                                ),
                                child: SvgPicture.asset(
                                    'assets/icon/send_icon.svg',
                                    height: 30.h,
                                    width: 30.w,
                                    color: Colors.white),
                              ),
                            ),
                            attachmentButtonIcon: OverflowBox(
                              maxHeight: 60.h,
                              maxWidth: 60.h,
                              child: SpeedDial(
                                spacing: 12.h,
                                spaceBetweenChildren: 8.h,
                                backgroundColor: AppColors.mainColor,
                                buttonSize: Size(42.w, 42.h),
                                childrenButtonSize: Size(42.w, 42.h),
                                childPadding: EdgeInsets.zero,
                                childMargin: const EdgeInsets.all(30),
                                openCloseDial: controller.isDialOpen,
                                children: [
                                  SpeedDialChild(
                                    onTap: () =>
                                        controller.handleCameraSelection(),
                                    backgroundColor: AppColors.mainColor,
                                    child: SvgPicture.asset(
                                      'assets/icon/attach_camera_icon.svg',
                                      height: 25.h,
                                      width: 25.w,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SpeedDialChild(
                                    onTap: () =>
                                        controller.handleImageSelection(),
                                    backgroundColor: AppColors.mainColor,
                                    child: SvgPicture.asset(
                                      'assets/icon/attach_gallery_icon.svg',
                                      height: 25.h,
                                      width: 25.w,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SpeedDialChild(
                                    onTap: () =>
                                        controller.handleFileSelection(),
                                    backgroundColor: AppColors.mainColor,
                                    child: SvgPicture.asset(
                                      'assets/icon/attach_video_icon.svg',
                                      height: 25.h,
                                      width: 25.w,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                                child: Icon(
                                  Icons.add,
                                  size: 30.sp,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          // onEndReached: ,
                          showUserAvatars: true,
                          sendButtonVisibilityMode:
                              SendButtonVisibilityMode.always,
                          onAttachmentPressed: () {},
                          onMessageTap: controller.handleMessageTap,
                          onPreviewDataFetched:
                              controller.handlePreviewDataFetched,
                          onSendPressed: controller.handleSendPressed,
                          user: currentProfile.toTypes(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class ChatsRoomPage extends StatefulWidget {
//   const ChatsRoomPage({Key? key}) : super(key: key);

//   @override
//   _ChatsRoomPageState createState() => _ChatsRoomPageState();
// }

// class _ChatsRoomPageState extends State<ChatsRoomPage> {
//   List<Message> _messages = [];
//   final _user = const types.User(id: '06c33e8b-e835-4736-80f4-63f44b66666c');

//   @override
//   void initState() {
//     super.initState();
//     _loadMessages();
//   }

//   void _addMessage(Message message) {
//     setState(() {
//       _messages.insert(0, message);
//     });
//   }

//   void _handleAtachmentPressed() {
//     showModalBottomSheet<void>(
//       context: context,
//       builder: (BuildContext context) {
//         return SafeArea(
//           child: SizedBox(
//             height: 144.h,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: <Widget>[
//                 TextButton(
//                   onPressed: () {
//                     Navigator.pop(context);
//                     _handleImageSelection();
//                   },
//                   child: const Align(
//                     alignment: Alignment.centerLeft,
//                     child: Text('Photo'),
//                   ),
//                 ),
//                 TextButton(
//                   onPressed: () {
//                     Navigator.pop(context);
//                     _handleFileSelection();
//                   },
//                   child: const Align(
//                     alignment: Alignment.centerLeft,
//                     child: Text('File'),
//                   ),
//                 ),
//                 TextButton(
//                   onPressed: () => Navigator.pop(context),
//                   child: const Align(
//                     alignment: Alignment.centerLeft,
//                     child: Text('Cancel'),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }

//   void _handleFileSelection() async {
//     final result = await FilePicker.platform.pickFiles(
//       type: FileType.any,
//     );

//     if (result != null && result.files.single.path != null) {
//       final message = types.FileMessage(
//         author: _user,
//         createdAt: DateTime.now().millisecondsSinceEpoch,
//         id: const Uuid().v4(),
//         mimeType: lookupMimeType(result.files.single.path!),
//         name: result.files.single.name,
//         size: result.files.single.size,
//         uri: result.files.single.path!,
//       );

//       _addMessage(message);
//     }
//   }



//     if (result != null) {
//       final bytes = await result.readAsBytes();
//       final image = await decodeImageFromList(bytes);

//       final message = types.ImageMessage(
//         author: _user,
//         createdAt: DateTime.now().millisecondsSinceEpoch,
//         height: image.height.toDouble(),
//         id: const Uuid().v4(),
//         name: result.name,
//         size: bytes.length,
//         uri: result.path,
//         width: image.width.toDouble(),
//       );

//       _addMessage(message);
//     }
//   }

//   void _handleMessageTap(Message message) async {
//     if (message is types.FileMessage) {
//       await OpenFile.open(message.uri);
//     }
//   }

//   void _handlePreviewDataFetched(
//     types.TextMessage message,
//     types.PreviewData previewData,
//   ) {
//     final index = _messages.indexWhere((element) => element.id == message.id);
//     final updatedMessage = _messages[index].copyWith(previewData: previewData);

//     WidgetsBinding.instance?.addPostFrameCallback((_) {
//       setState(() {
//         _messages[index] = updatedMessage;
//       });
//     });
//   }

//   void _handleSendPressed(types.PartialText message) {
//     final textMessage = types.TextMessage(
//       author: _user,
//       createdAt: DateTime.now().millisecondsSinceEpoch,
//       id: const Uuid().v4(),
//       text: message.text,
//     );

//     _addMessage(textMessage);
//   }

//   void _loadMessages() async {
//     final response = await rootBundle.loadString('assets/messages.json');
//     final messages = (jsonDecode(response) as List)
//         .map((e) => Message.fromJson(e as Map<String, dynamic>))
//         .toList();

//     setState(() {
//       _messages = messages;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     SystemChrome.setSystemUIOverlayStyle(
//       const SystemUiOverlayStyle(
//         statusBarBrightness: Brightness.dark,
//       ),
//     );
//     return Scaffold(
//       backgroundColor: Colors.black,
//       child: SafeArea(
//         child: Column(
//           children: [
//             Container(
//               padding: const EdgeInsets.symmetric(
//                 horizontal: Dimens.defaultMargin,
//                 vertical: 15,
//               ),
//               decoration: const BoxDecoration(
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(24),
//                   topRight: Radius.circular(24),
//                 ),
//                 color: Colors.white,
//               ),
//               child: Row(
//                 children: [
//                   GestureDetector(
//                     onTap: () => Get.back(),
//                     child: const Icon(
//                       Icons.arrow_back_ios,
//                     ),
//                   ),
//                   AddHorizontalSpace(20),
//                   CircleAvatar(
//                     radius: 20.r,
//                     backgroundColor: Colors.white,
//                     child: Stack(
//                       children: [
//                         const Positioned.fill(
//                           child: CircularProgressIndicator(
//                             value: 0.8,
//                             valueColor:
//                                 AlwaysStoppedAnimation(AppColors.mainColor),
//                           ),
//                         ),
//                         Positioned.fill(
//                           child: CircleAvatar(
//                             radius: 10.r,
//                             backgroundColor: AppColors.greyBackground,
//                             child: const Icon(
//                               Icons.person,
//                               color: Colors.black,
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                   AddHorizontalSpace(20),
//                   Expanded(
//                     child: Text(
//                       '38 min left',
//                     ),
//                   ),
//                   Material(
//                     child: InkWell(
//                       onTap: () {},
//                       child: Ink(
//                         child: CircleAvatar(
//                           radius: 15.r,
//                           child: SvgPicture.asset(
//                             'assets/icon/extend_time_icon.svg',
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   AddHorizontalSpace(20),
//                   Material(
//                     child: InkWell(
//                       onTap: () {},
//                       child: Ink(
//                         child: CircleAvatar(
//                           radius: 15.r,
//                           child: SvgPicture.asset(
//                             'assets/icon/video_call_icon.svg',
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   AddHorizontalSpace(20),
//                   Material(
//                     child: InkWell(
//                       onTap: () {},
//                       child: Ink(
//                         child: CircleAvatar(
//                           backgroundColor: const Color(0xFFFF6278),
//                           radius: 15.r,
//                           child: SvgPicture.asset(
//                             'assets/icon/flag_icon.svg',
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Expanded(
//               child: Chat(
//                 messages: _messages,
//                 theme: DefaultChatTheme(
//                   primaryColor: AppColors.mainColor,
//                   inputTextColor: Colors.black,
//                   secondaryColor: AppColors.greyBackground,
//                   inputBackgroundColor: Colors.white,
//                   inputTextDecoration: InputDecoration(
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(30.r),
//                       borderSide: const BorderSide(
//                         color: Colors.grey,
//                         width: 1,
//                       ),
//                     ),
//                     contentPadding: const EdgeInsets.symmetric(
//                       horizontal: 16,
//                       vertical: 8,
//                     ),
//                   ),
//                   attachmentButtonIcon: const Icon(Icons.add),
//                 ),
//                 showUserAvatars: true,
//                 sendButtonVisibilityMode: SendButtonVisibilityMode.always,
//                 onAttachmentPressed: _handleAtachmentPressed,
//                 onMessageTap: _handleMessageTap,
//                 onPreviewDataFetched: _handlePreviewDataFetched,
//                 onSendPressed: _handleSendPressed,
//                 user: _user,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
