import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crave_app/domain/core/interfaces/i_storage.dart';
import 'package:crave_app/domain/settings/i_setting_repository.dart';
import 'package:crave_app/domain/settings/setting_failure.dart';
import 'package:crave_app/domain/settings/setting_data.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@LazySingleton(as: ISettingRepository)
class SettingRepository implements ISettingRepository {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;
  final IStorage _storage;
  final Logger logger;
  SettingRepository(
    this._firestore,
    this._firebaseAuth,
    this._storage,
    this.logger,
  );
  @override
  Future<Either<SettingFailure, SettingData>> getSettingData() async {
    try {
      final user = _firebaseAuth.currentUser;
      if (user == null) {
        return left(const SettingFailure.unauthenticated());
      }
      final _box = await _storage.openBox(StorageConstants.user);
      final _getSettingDataFromStorage =
          await _storage.getData(_box, key: 'setting_data');
      if (_getSettingDataFromStorage != null) {
        return right(SettingData.fromJson(
            Map<String, dynamic>.from(_getSettingDataFromStorage)));
      }

      final userSnapshot =
          await _firestore.collection('users').doc(user.uid).get();
      final data = userSnapshot.data();

      if (data == null || data.isEmpty) {
        return left(const SettingFailure.unauthenticated());
      }
      final genderId = data['gender_id'] as int;
      final dataMap = data['setting_data'];
      if (dataMap == null) {
        final defaultSeeking = genderId == 1
            ? [2]
            : genderId == 2
                ? [1]
                : [1, 2, 3];

        final settingData = SettingData(
          seeking: defaultSeeking,
          pushNotification: true,
          newMessageAlert: true,
          likeNotification: true,
          chatTimerNotification: true,
        );
        await _storage.putDanum(_box,
            key: 'setting_data', value: settingData.toJson());
        await _firestore.collection('users').doc(user.uid).update({
          'setting_data': settingData.toJson(),
        });
        return right(settingData);
      }
      final settingData = SettingData.fromJson(dataMap);
      await _storage.putDanum(_box,
          key: 'setting_data', value: settingData.toJson());
      return right(settingData);
    } on FirebaseException catch (e, stacktrace) {
      logger.d(stacktrace);
      logger.d(e.message);
      return left(SettingFailure.serverError(e.message ?? 'An error occurred'));
    } catch (e, stackTrace) {
      logger.d(stackTrace);
      return left(const SettingFailure.unexpected());
    }
  }

  @override
  Future<Either<SettingFailure, SettingData>> updateSettingData(
      {required SettingData settingData}) async {
    try {
      final user = _firebaseAuth.currentUser;
      if (user == null) {
        return left(const SettingFailure.unauthenticated());
      }
      await _firestore.collection('users').doc(user.uid).update({
        'setting_data': settingData.toJson(),
      });
      final _box = await _storage.openBox(StorageConstants.user);
      await _storage.putDanum(
        _box,
        key: 'setting_data',
        value: settingData.toJson(),
      );
      await _storage.putDanum(
        _box,
        key: 'setting_data',
        value: settingData.toJson(),
      );
      return right(settingData);
    } on FirebaseException catch (e, stacktrace) {
      logger.d(stacktrace);
      logger.d(e.message);
      return left(SettingFailure.serverError(e.message ?? 'An error occurred'));
    } catch (e, stackTrace) {
      logger.d(stackTrace);
      return left(const SettingFailure.unexpected());
    }
  }
}
