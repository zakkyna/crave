import 'package:crave_app/domain/settings/setting_data.dart';
import 'package:crave_app/domain/settings/setting_failure.dart';
import 'package:fpdart/fpdart.dart';

abstract class ISettingRepository {
  Future<Either<SettingFailure, SettingData>> getSettingData();
  Future<Either<SettingFailure, SettingData>> updateSettingData({
    required SettingData settingData,
  });
}
