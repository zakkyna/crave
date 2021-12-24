// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity_plus/connectivity_plus.dart' as _i3;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/hive_flutter.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i11;

import 'application/app/app_bloc.dart' as _i14;
import 'application/auth/auth_bloc.dart' as _i15;
import 'application/subscription/subscription_bloc.dart' as _i13;
import 'domain/auth/i_auth_facade.dart' as _i6;
import 'domain/core/i_network_service.dart' as _i16;
import 'domain/core/i_storage.dart' as _i8;
import 'domain/subscription/i_subscription_repository.dart' as _i9;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i7;
import 'infrastructure/core/register_module.dart' as _i17;
import 'infrastructure/subscription/subscription_repository.dart' as _i10;
import 'simple_bloc_delegate.dart'
    as _i12; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.Connectivity>(() => registerModule.connectivity);
  gh.lazySingleton<_i4.FirebaseAuth>(() => registerModule.firebaseAuth);
  gh.lazySingleton<_i5.HiveInterface>(() => registerModule.hive);
  gh.lazySingleton<_i6.IAuthFacade>(
      () => _i7.FirebaseAuthFacade(get<_i4.FirebaseAuth>()));
  gh.lazySingleton<_i8.IStorage<dynamic>>(() => registerModule.storage);
  gh.lazySingleton<_i9.ISubscriptionRepository>(
      () => _i10.SubscriptionRepository());
  gh.lazySingleton<_i11.Logger>(() => registerModule.logger);
  gh.factory<_i12.SimpleBlocObserver>(
      () => _i12.SimpleBlocObserver(get<_i11.Logger>()));
  gh.factory<String>(() => registerModule.baseUrl, instanceName: 'baseUrl');
  gh.lazySingleton<_i13.SubscriptionBloc>(
      () => _i13.SubscriptionBloc(get<_i9.ISubscriptionRepository>()));
  gh.lazySingleton<_i14.AppBloc>(
      () => _i14.AppBloc(get<_i8.IStorage<dynamic>>(), get<_i11.Logger>()));
  gh.lazySingleton<_i15.AuthBloc>(() => _i15.AuthBloc(get<_i6.IAuthFacade>()));
  await gh.lazySingletonAsync<_i16.INetworkService>(
      () => registerModule.network(
          get<String>(instanceName: 'baseUrl'), get<_i8.IStorage<dynamic>>()),
      preResolve: true);
  return get;
}

class _$RegisterModule extends _i17.RegisterModule {}
