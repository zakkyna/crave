import 'package:bloc/bloc.dart';
import 'package:crave_app/domain/settings/i_setting_repository.dart';
import 'package:crave_app/domain/settings/setting_data.dart';
import 'package:crave_app/domain/settings/setting_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';

@injectable
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final ISettingRepository _settingRepository;
  SettingsBloc(this._settingRepository) : super(const _Initial()) {
    on<SettingsEvent>((event, emit) async {
      await event.map(
        loadData: (_event) async {
          emit(const _Loading());
          final result = await _settingRepository.getSettingData();
          result.fold(
            (failure) => emit(_LoadFailure(failure)),
            (settingData) => emit(_LoadSuccess(settingData)),
          );
        },
        saveSeeking: (_event) async {
          final settingData = state.maybeMap(
            orElse: () => null,
            loadSuccess: (state) => state.settingData,
          );
          if (settingData == null) {
            emit(const _UpdateFailure(SettingFailure.unexpected()));
            return;
          }
          emit(const _Loading());
          final result = await _settingRepository.updateSettingData(
            settingData: settingData.copyWith(
              seeking: _event.seeking,
            ),
          );
          result.fold(
            (failure) => emit(_UpdateFailure(failure)),
            (settings) => emit(_UpdateSuccess(settings)),
          );
        },
        saveNotification: (_event) async {
          final settingData = state.maybeMap(
            orElse: () => null,
            loadSuccess: (state) => state.settingData,
          );
          if (settingData == null) {
            emit(const _UpdateFailure(SettingFailure.unexpected()));
            return;
          }
          emit(const _Loading());
          final result = await _settingRepository.updateSettingData(
            settingData: settingData.copyWith(
              chatTimerNotification: _event.chatTimerNotification,
              likeNotification: _event.likeNotification,
              newMessageAlert: _event.newMessageAlert,
              pushNotification: _event.pushNotification,
            ),
          );
          result.fold(
            (failure) => emit(_UpdateFailure(failure)),
            (settings) => emit(_UpdateSuccess(settings)),
          );
        },
      );
    });
  }
}
