import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:crave_app/domain/auth/user_status.dart';
import 'package:crave_app/domain/core/interfaces/i_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

@lazySingleton
class AppBloc extends Bloc<AppEvent, AppState> {
  final Logger logger;
  final IStorage _storage;
  AppBloc(
    this._storage,
    this.logger,
  ) : super(AppState.initial()) {
    on<AppEvent>((event, emit) async {
      await event.map(
        started: (e) async {
          emit(
            state.copyWith(
              isLoading: true,
            ),
          );
          final box = await _storage.openBox(StorageConstants.base);
          final isPreInstalled =
              await _storage.getData(box, key: 'isPreInstalled');
          if (isPreInstalled == null) {
            await _storage.putDanum(
              box,
              key: 'isPreInstalled',
              value: true,
            );
            emit(state.copyWith(isPreinstalled: false, isLoading: false));
          } else {
            emit(state.copyWith(isPreinstalled: true, isLoading: false));
          }
          Connectivity().onConnectivityChanged.listen((conectionEvent) {
            add(AppEvent.connectionChanged(conectionEvent));
          });
        },
        connectionChanged: (_event) {
          emit(
            state.copyWith(
              connectionStatus: _event.connection,
            ),
          );
        },
        statusChanged: (_event) {},
      );
    });
  }
}
