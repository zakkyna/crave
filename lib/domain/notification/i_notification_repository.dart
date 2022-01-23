import 'package:crave_app/domain/notification/notification_failure.dart';
import 'package:fpdart/fpdart.dart';

abstract class INotificationRepository {
  Future<Either<NotificationFailure, Unit>> postToken();
  Future<Either<NotificationFailure, Unit>> init();
}
