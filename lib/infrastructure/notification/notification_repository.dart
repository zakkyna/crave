import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crave_app/domain/notification/i_notification_repository.dart';
import 'package:crave_app/domain/notification/notification_failure.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@LazySingleton(as: INotificationRepository)
class NotificationRepository implements INotificationRepository {
  final FirebaseMessaging _firebaseMessaging;
  final FirebaseFirestore _firestore;
  final FirebaseAuth _firebaseAuth;
  final Logger logger;
  NotificationRepository(
    this.logger,
    this._firebaseMessaging,
    this._firestore,
    this._firebaseAuth,
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
      await _firebaseMessaging.setForegroundNotificationPresentationOptions(
        alert: true, // Required to display a heads up notification
        badge: true,
        sound: true,
      );
      FirebaseMessaging.onMessage.listen((RemoteMessage message) {
        final notification = message.notification;
        final android = message.notification?.android;

        // If `onMessage` is triggered with a notification, construct our own
        // local notification to show to users using the created channel.
        if (notification != null && android != null) {
          AwesomeNotifications().createNotification(
              content: NotificationContent(
            id: 10,
            channelKey: 'basic_channel',
            title: notification.title,
            body: notification.body,
          ));
        }
      });
      return right(unit);
    } catch (e, stacktrace) {
      logger.d(stacktrace);
      return left(const NotificationFailure.unexpected());
    }
  }
}
