import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:crave_app/domain/core/i_network_service.dart';
import 'package:crave_app/domain/core/i_storage.dart';
import 'package:crave_app/infrastructure/core/auth_interceptor.dart';
import 'package:crave_app/infrastructure/core/logger_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:crave_app/infrastructure/core/network_service.dart';
import 'package:crave_app/infrastructure/core/storage.dart';

@module
abstract class RegisterModule {
  // Map<String, String> mapBaseUrl = {
  //   Environment.dev: 'https://jsonplaceholder.typicode.com',
  //   Environment.prod: 'https://jsonplaceholder.typicode.com',
  // };

  @Named('baseUrl')
  String get baseUrl => 'https://jsonplaceholder.typicode.com';

  @lazySingleton
  Connectivity get connectivity => Connectivity();

  @lazySingleton
  HiveInterface get hive => Hive;

  @lazySingleton
  Logger get logger => Logger();

  @lazySingleton
  IStorage get storage => StorageImpl();

  @preResolve
  @lazySingleton
  Future<INetworkService> network(
    @Named('baseUrl') String baseUrl,
    IStorage _storage,
  ) async {
    await _storage.openBox(StorageConstants.security);
    IList<Interceptor> interceptors = <Interceptor>[
      AuthInterceptor(
        storage: _storage,
        authKey: 'sessionId',
      ),
      LoggerInterceptor(
          requestBody: true,
          request: true,
          requestHeader: true,
          responseBody: true,
          responseHeader: true),
    ].lock;

    return NetworkService(baseUrl: baseUrl, interceptors: interceptors);
  }
}
