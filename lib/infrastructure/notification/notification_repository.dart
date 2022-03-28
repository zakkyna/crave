import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crave_app/domain/chat/room_model.dart';
import 'package:crave_app/domain/core/theme/theme.dart';
import 'package:crave_app/domain/notification/i_notification_repository.dart';
import 'package:crave_app/domain/notification/notification_failure.dart';
import 'package:crave_app/domain/profile/profile.dart';
import 'package:crave_app/presentation/chat/chat_room_page.dart';
import 'package:crave_app/presentation/routers/routers.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fpdart/fpdart.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'dart:convert';

@LazySingleton(as: INotificationRepository)
class NotificationRepository implements INotificationRepository {
  final FirebaseMessaging _firebaseMessaging;
  final FirebaseFirestore _firestore;
  final FirebaseAuth _firebaseAuth;
  final FlutterLocalNotificationsPlugin _localNotificationsPlugin;
  final Logger logger;
  NotificationRepository(
    this.logger,
    this._firebaseMessaging,
    this._firestore,
    this._firebaseAuth,
    this._localNotificationsPlugin,
  );
  @override
  Future<Either<NotificationFailure, Unit>> postToken() async {
    try {
      final user = _firebaseAuth.currentUser;
      if (user == null) {
        return left(const NotificationFailure.unauthenticated());
      }

      final token = await _firebaseMessaging.getToken();
      if (token == null) {
        return left(const NotificationFailure.unexpected());
      }
      final doc = _firestore.collection('users').doc(user.uid);
      await doc.update({"token_messaging": token});

      return right(unit);
    } on FirebaseException catch (e, stacktrace) {
      logger.d(stacktrace);
      logger.d(e.message);
      return left(
          NotificationFailure.serverError(e.message ?? 'An error occurred'));
    } catch (e, stacktrace) {
      logger.d(stacktrace);
      return left(const NotificationFailure.unexpected());
    }
  }

  @override
  Future<Either<NotificationFailure, Unit>> init() async {
    try {
      await setupInteractedMessage();
      return right(unit);
    } catch (e, stacktrace) {
      logger.d(stacktrace);
      return left(const NotificationFailure.unexpected());
    }
  }

  // It is assumed that all messages contain a data field with the key 'type'
  Future<void> setupInteractedMessage() async {
// Get any messages which caused the application to open from a terminated state.
    // If you want to handle a notification click when the app is terminated, you can use `getInitialMessage`
    // to get the initial message, and depending in the remoteMessage, you can decide to handle the click
    // This function can be called from anywhere in your app, there is an example in main file.
    // RemoteMessage initialMessage =
    //     await FirebaseMessaging.instance.getInitialMessage();
    // If the message also contains a data property with a "type" of "chat",
    // navigate to a chat screen
    // if (initialMessage != null && initialMessage.data['type'] == 'chat') {
    // Navigator.pushNamed(context, '/chat',
    //     arguments: ChatArguments(initialMessage));
    // }
// Also handle any interaction when the app is in the background via a
    // Stream listener
    // This function is called when the app is in the background and user clicks on the notification
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) async {
      Get.toNamed(Routers.main);
      if (message.data['type'] == 'chat') {
        final currentUser = _firebaseAuth.currentUser;
        if (currentUser == null) {
          return;
        }
        final roomSnapshot = await _firestore
            .collection('rooms')
            .doc(message.data['room_id'])
            .get();
        final roomNotFound = roomSnapshot.data() == null ||
            (roomSnapshot.data()?.isEmpty ?? true);
        if (roomNotFound) {
          return;
        }
        final roomModel = RoomModel.fromJson(roomSnapshot.data()!);

        final userSnapshot =
            await _firestore.collection('users').doc(currentUser.uid).get();
        final isNoData = userSnapshot.data() == null ||
            (userSnapshot.data()?.isEmpty ?? true);
        if (isNoData) {
          return;
        }
        final currentProfile = Profile.fromJson(userSnapshot.data()!);

        Get.to(
          () => ChatRoomPage(
            roomModel: roomModel,
            currentProfile: currentProfile,
          ),
        );
      }
    });
    await enableIOSNotifications();
    await registerNotificationListeners();
  }

  registerNotificationListeners() async {
    AndroidNotificationChannel channel = androidNotificationChannel();

    await _localNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);
    const androidSettings =
        AndroidInitializationSettings('@mipmap/ic_launcher');
    final iOSSettings = IOSInitializationSettings(
      onDidReceiveLocalNotification: onDidReceiveLocalNotification,
    );
    final initSetttings =
        InitializationSettings(android: androidSettings, iOS: iOSSettings);
    _localNotificationsPlugin.initialize(
      initSetttings,
      onSelectNotification: (message) async {
        // This function handles the click in the notification when the app is in foreground
        // Get.toNamed(NOTIFICATIOINS_ROUTE);
      },
    );
    // onMessage is called when the app is in foreground and a notification is received
    FirebaseMessaging.onMessage.listen((RemoteMessage? message) {
      // Get.find<HomeController>().getNotificationsNumber();
      RemoteNotification? notification = message!.notification;
      AndroidNotification? android = message.notification?.android;
      final data = message.data;
      // If `onMessage` is triggered with a notification, construct our own
      // local notification to show to users using the created channel.
      if (notification != null && android != null) {
        _localNotificationsPlugin.show(
          notification.hashCode,
          notification.title,
          notification.body,
          NotificationDetails(
            android: AndroidNotificationDetails(
              channel.id,
              channel.name,
              channelDescription: channel.description,
              icon: android.smallIcon,
              playSound: true,
            ),
          ),
        );
        Get.closeAllSnackbars();
        Get.showSnackbar(
          GetSnackBar(
            duration: const Duration(seconds: 3),
            onTap: (_) async {
              if (data['type'] == 'chat') {
                final currentUser = _firebaseAuth.currentUser;
                if (currentUser == null) {
                  return;
                }
                final roomSnapshot = await _firestore
                    .collection('rooms')
                    .doc(message.data['room_id'])
                    .get();
                final roomNotFound = roomSnapshot.data() == null ||
                    (roomSnapshot.data()?.isEmpty ?? true);
                if (roomNotFound) {
                  return;
                }
                final roomModel = RoomModel.fromJson(roomSnapshot.data()!);

                final userSnapshot = await _firestore
                    .collection('users')
                    .doc(currentUser.uid)
                    .get();
                final isNoData = userSnapshot.data() == null ||
                    (userSnapshot.data()?.isEmpty ?? true);
                if (isNoData) {
                  return;
                }
                final currentProfile = Profile.fromJson(userSnapshot.data()!);

                Get.to(
                  () => ChatRoomPage(
                    roomModel: roomModel,
                    currentProfile: currentProfile,
                  ),
                );
              }
            },
            titleText: Text(
              notification.title ?? '',
              style: Styles.kefa16Bold.copyWith(
                color: Colors.white,
              ),
            ),
            messageText: Text(
              notification.body ?? '',
              style: Styles.kefa14Medium.copyWith(
                color: Colors.white,
              ),
            ),
            shouldIconPulse: false,
            snackPosition: SnackPosition.TOP,
            margin: EdgeInsets.all(20.w),
            borderRadius: 20,
            padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 15.h),
            icon: CircleAvatar(
              radius: 21.r,
              backgroundColor: Colors.white,
              child: Icon(
                data['type'] == 'chat' ? Icons.chat : Icons.favorite,
                size: 25.sp,
                color: AppColors.mainColor2,
              ),
            ),
            backgroundGradient: const LinearGradient(
              colors: [
                AppColors.mainColor2,
                AppColors.mainColor,
              ],
            ),
          ),
        );
      }
    });
  }

  enableIOSNotifications() async {
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true, // Required to display a heads up notification
      badge: true,
      sound: true,
    );
  }

  androidNotificationChannel() => const AndroidNotificationChannel(
        'default_notification_channel_id', // id
        'Crave Default Notification Channel', // title
        description:
            'This channel is used for important notifications.', // description
        importance: Importance.high,
      );

  void onDidReceiveLocalNotification(
      int id, String? title, String? body, String? payload) async {
    // display a dialog with the notification details, tap ok to go to another page
    Get.snackbar(title ?? '', body ?? '', onTap: (getSnackbar) async {
      final currentUser = _firebaseAuth.currentUser;
      if (currentUser == null) {
        return;
      }
      final data = json.decode(payload ?? '');
      final roomSnapshot =
          await _firestore.collection('rooms').doc(data['room_id']).get();
      final roomNotFound =
          roomSnapshot.data() == null || (roomSnapshot.data()?.isEmpty ?? true);
      if (roomNotFound) {
        return;
      }
      final roomModel = RoomModel.fromJson(roomSnapshot.data()!);

      final userSnapshot =
          await _firestore.collection('users').doc(currentUser.uid).get();
      final isNoData =
          userSnapshot.data() == null || (userSnapshot.data()?.isEmpty ?? true);
      if (isNoData) {
        return;
      }
      final currentProfile = Profile.fromJson(userSnapshot.data()!);

      Get.to(
        () => ChatRoomPage(
          roomModel: roomModel,
          currentProfile: currentProfile,
        ),
      );
    });
  }
}
