// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity_plus/connectivity_plus.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/hive_flutter.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i8;

import 'application/app/app_bloc.dart' as _i10;
import 'application/auth/auth_bloc.dart' as _i11;
import 'domain/auth/i_auth_facade.dart' as _i5;
import 'domain/core/i_network_service.dart' as _i12;
import 'domain/core/i_storage.dart' as _i7;
import 'infrastructure/auth/mock_auth_facade.dart' as _i6;
import 'infrastructure/core/register_module.dart' as _i13;
import 'simple_bloc_delegate.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.Connectivity>(() => registerModule.connectivity);
  gh.lazySingleton<_i4.HiveInterface>(() => registerModule.hive);
  gh.lazySingleton<_i5.IAuthFacade>(() => _i6.MockAuthFacade());
  gh.lazySingleton<_i7.IStorage<dynamic>>(() => registerModule.storage);
  gh.lazySingleton<_i8.Logger>(() => registerModule.logger);
  gh.factory<_i9.SimpleBlocObserver>(
      () => _i9.SimpleBlocObserver(get<_i8.Logger>()));
  gh.factory<String>(() => registerModule.baseUrl, instanceName: 'baseUrl');
  gh.factory<_i10.AppBloc>(() => _i10.AppBloc(get<_i7.IStorage<dynamic>>()));
  gh.factory<_i11.AuthBloc>(() => _i11.AuthBloc(get<_i5.IAuthFacade>()));
  await gh.lazySingletonAsync<_i12.INetworkService>(
      () => registerModule.network(
          get<String>(instanceName: 'baseUrl'), get<_i7.IStorage<dynamic>>()),
      preResolve: true);
  return get;
}

class _$RegisterModule extends _i13.RegisterModule {}
