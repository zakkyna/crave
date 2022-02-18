import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:crave_app/domain/core/interfaces/i_network_service.dart';
import 'package:crave_app/domain/core/interfaces/i_storage.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart';
import 'package:crave_app/infrastructure/core/auth_interceptor.dart';
import 'package:crave_app/infrastructure/core/logger_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:crave_app/infrastructure/core/network_service.dart';

@module
abstract class RegisterModule {
  @Named('baseUrl')
  String get baseUrl => 'https://jsonplaceholder.typicode.com';

  @lazySingleton
  Connectivity get connectivity => Connectivity();

  @lazySingleton
  HiveInterface get hive => Hive;

  @lazySingleton
  Logger get logger => Logger();

  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;

  @lazySingleton
  FirebaseFirestore get firebaseFirestore => FirebaseFirestore.instance;

  @lazySingleton
  FirebaseStorage get firebaseStorage => FirebaseStorage.instance;

  @lazySingleton
  FirebaseMessaging get messaging => FirebaseMessaging.instance;

  @lazySingleton
  FirebaseFunctions get functions => FirebaseFunctions.instance;

  @lazySingleton
  ImagePicker get imagePicker => ImagePicker();

  @lazySingleton
  GeolocatorPlatform get geolocatorPlatform => GeolocatorPlatform.instance;

  @lazySingleton
  GeocodingPlatform get geocodingPlatform => GeocodingPlatform.instance;

  @lazySingleton
  Geoflutterfire get geoflutterfire => Geoflutterfire();

  @lazySingleton
  FirebaseAnalytics get analytics => FirebaseAnalytics.instance;

  @lazySingleton
  FlutterLocalNotificationsPlugin get notifications =>
      FlutterLocalNotificationsPlugin();

  @lazySingleton
  InAppPurchase get inappPurchase => InAppPurchase.instance;

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
        responseHeader: true,
      ),
    ].lock;

    return NetworkService(baseUrl: baseUrl, interceptors: interceptors);
  }
}
