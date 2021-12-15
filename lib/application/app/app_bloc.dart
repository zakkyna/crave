import 'package:bloc/bloc.dart';
import 'package:crave_app/domain/core/i_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'app_bloc.freezed.dart';

@injectable
class AppBloc extends Bloc<AppEvent, AppState> {
  final IStorage _storage;
  AppBloc(this._storage) : super(AppState.initial()) {
    on<AppEvent>((event, emit) async {
      await event.map(
        started: (e) async {
          emit(
            state.copyWith(
              isLoading: true,
            ),
          );
          await _storage.openBox(StorageConstants.base);
          final isPreInstalled = await _storage.getData(key: 'isPreInstalled');
          if (isPreInstalled == null) {
            await _storage.putDanum(
              key: 'isPreInstalled',
              value: true,
            );
            emit(state.copyWith(isPreinstalled: false, isLoading: false));
          } else {
            emit(state.copyWith(isPreinstalled: true, isLoading: false));
          }
        },
      );
    });
  }
}
