// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i7;
import 'package:cloud_functions/cloud_functions.dart' as _i8;
import 'package:connectivity_plus/connectivity_plus.dart' as _i4;
import 'package:firebase_analytics/firebase_analytics.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i6;
import 'package:firebase_messaging/firebase_messaging.dart' as _i9;
import 'package:firebase_storage/firebase_storage.dart' as _i10;
import 'package:flutter_local_notifications/flutter_local_notifications.dart'
    as _i11;
import 'package:geocoding/geocoding.dart' as _i12;
import 'package:geoflutterfire/geoflutterfire.dart' as _i13;
import 'package:geolocator/geolocator.dart' as _i14;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/hive_flutter.dart' as _i15;
import 'package:image_picker/image_picker.dart' as _i23;
import 'package:in_app_purchase/in_app_purchase.dart' as _i24;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i25;

import 'application/app/app_bloc.dart' as _i28;
import 'application/auth/auth_bloc.dart' as _i51;
import 'application/auth/login/login_bloc.dart' as _i43;
import 'application/auth/register/register_bloc.dart' as _i47;
import 'application/chat/chatroom/chatroom_bloc.dart' as _i52;
import 'application/chat/rooms/rooms_bloc.dart' as _i48;
import 'application/home/home_controller.dart' as _i16;
import 'application/landing/bottom_tab_controller.dart' as _i3;
import 'application/notification/notification_bloc.dart' as _i26;
import 'application/post/post_bloc.dart' as _i44;
import 'application/profile/profile_bloc.dart' as _i45;
import 'application/profile/update_profile/update_profile_bloc.dart' as _i50;
import 'application/subscription/purchase/purchase_bloc.dart' as _i46;
import 'application/subscription/subscription_bloc.dart' as _i49;
import 'domain/auth/i_auth_facade.dart' as _i30;
import 'domain/chat/i_chat_repository.dart' as _i32;
import 'domain/core/interfaces/i_handle_error.dart' as _i17;
import 'domain/core/interfaces/i_location_service.dart' as _i19;
import 'domain/core/interfaces/i_network_service.dart' as _i34;
import 'domain/core/interfaces/i_storage.dart' as _i21;
import 'domain/notification/i_notification_repository.dart' as _i35;
import 'domain/post/i_post_repository.dart' as _i37;
import 'domain/profile/i_profile_repository.dart' as _i39;
import 'domain/subscription/i_subscription_repository.dart' as _i41;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i31;
import 'infrastructure/chat/chat_repository.dart' as _i33;
import 'infrastructure/core/handle_error.dart' as _i18;
import 'infrastructure/core/location_service.dart' as _i20;
import 'infrastructure/core/register_module.dart' as _i53;
import 'infrastructure/core/storage.dart' as _i22;
import 'infrastructure/notification/notification_repository.dart' as _i36;
import 'infrastructure/post/post_repository.dart' as _i38;
import 'infrastructure/profile/profile_repository.dart' as _i40;
import 'infrastructure/subscription/subscription_repository.dart' as _i42;
import 'presentation/app_widget.dart' as _i29;
import 'simple_bloc_delegate.dart'
    as _i27; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.BottomTabController>(() => _i3.BottomTabController());
  gh.lazySingleton<_i4.Connectivity>(() => registerModule.connectivity);
  gh.lazySingleton<_i5.FirebaseAnalytics>(() => registerModule.analytics);
  gh.lazySingleton<_i6.FirebaseAuth>(() => registerModule.firebaseAuth);
  gh.lazySingleton<_i7.FirebaseFirestore>(
      () => registerModule.firebaseFirestore);
  gh.lazySingleton<_i8.FirebaseFunctions>(() => registerModule.functions);
  gh.lazySingleton<_i9.FirebaseMessaging>(() => registerModule.messaging);
  gh.lazySingleton<_i10.FirebaseStorage>(() => registerModule.firebaseStorage);
  gh.lazySingleton<_i11.FlutterLocalNotificationsPlugin>(
      () => registerModule.notifications);
  gh.lazySingleton<_i12.GeocodingPlatform>(
      () => registerModule.geocodingPlatform);
  gh.lazySingleton<_i13.Geoflutterfire>(() => registerModule.geoflutterfire);
  gh.lazySingleton<_i14.GeolocatorPlatform>(
      () => registerModule.geolocatorPlatform);
  gh.lazySingleton<_i15.HiveInterface>(() => registerModule.hive);
  gh.lazySingleton<_i16.HomeController>(() => _i16.HomeController());
  gh.lazySingleton<_i17.IHandleError>(() => _i18.HandleError());
  gh.lazySingleton<_i19.ILocationService>(() => _i20.LocationService(
      get<_i14.GeolocatorPlatform>(), get<_i12.GeocodingPlatform>()));
  gh.lazySingleton<_i21.IStorage<dynamic>>(
      () => _i22.StorageImpl<dynamic>(get<_i15.HiveInterface>()));
  gh.lazySingleton<_i23.ImagePicker>(() => registerModule.imagePicker);
  gh.lazySingleton<_i24.InAppPurchase>(() => registerModule.inappPurchase);
  gh.lazySingleton<_i25.Logger>(() => registerModule.logger);
  gh.lazySingleton<_i26.NotificationBloc>(() => _i26.NotificationBloc());
  gh.factory<_i27.SimpleBlocObserver>(
      () => _i27.SimpleBlocObserver(get<_i25.Logger>()));
  gh.factory<String>(() => registerModule.baseUrl, instanceName: 'baseUrl');
  gh.lazySingleton<_i28.AppBloc>(
      () => _i28.AppBloc(get<_i21.IStorage<dynamic>>(), get<_i25.Logger>()));
  gh.lazySingleton<_i29.AppWidget>(
      () => _i29.AppWidget(get<_i5.FirebaseAnalytics>(), get<_i25.Logger>()));
  gh.lazySingleton<_i30.IAuthFacade>(() => _i31.FirebaseAuthFacade(
      get<_i6.FirebaseAuth>(),
      get<_i7.FirebaseFirestore>(),
      get<_i25.Logger>()));
  gh.lazySingleton<_i32.IChatRepository>(() => _i33.ChatRepository(
      get<_i6.FirebaseAuth>(),
      get<_i7.FirebaseFirestore>(),
      get<_i8.FirebaseFunctions>(),
      get<_i25.Logger>()));
  await gh.lazySingletonAsync<_i34.INetworkService>(
      () => registerModule.network(
          get<String>(instanceName: 'baseUrl'), get<_i21.IStorage<dynamic>>()),
      preResolve: true);
  gh.lazySingleton<_i35.INotificationRepository>(() =>
      _i36.NotificationRepository(
          get<_i25.Logger>(),
          get<_i9.FirebaseMessaging>(),
          get<_i7.FirebaseFirestore>(),
          get<_i6.FirebaseAuth>(),
          get<_i11.FlutterLocalNotificationsPlugin>()));
  gh.lazySingleton<_i37.IPostRepository>(() => _i38.PostRepository(
      get<_i7.FirebaseFirestore>(),
      get<_i6.FirebaseAuth>(),
      get<_i13.Geoflutterfire>(),
      get<_i19.ILocationService>(),
      get<_i25.Logger>()));
  gh.lazySingleton<_i39.IProfileRepository>(() => _i40.ProfileRepository(
      get<_i6.FirebaseAuth>(),
      get<_i7.FirebaseFirestore>(),
      get<_i10.FirebaseStorage>(),
      get<_i25.Logger>(),
      get<_i23.ImagePicker>(),
      get<_i19.ILocationService>(),
      get<_i13.Geoflutterfire>()));
  gh.lazySingleton<_i41.ISubscriptionRepository>(() =>
      _i42.SubscriptionRepository(
          get<_i25.Logger>(),
          get<_i6.FirebaseAuth>(),
          get<_i7.FirebaseFirestore>(),
          get<_i8.FirebaseFunctions>(),
          get<_i24.InAppPurchase>()));
  gh.lazySingleton<_i43.LoginBloc>(
      () => _i43.LoginBloc(get<_i30.IAuthFacade>()));
  gh.lazySingleton<_i44.PostBloc>(() =>
      _i44.PostBloc(get<_i37.IPostRepository>(), get<_i32.IChatRepository>()));
  gh.lazySingleton<_i45.ProfileBloc>(
      () => _i45.ProfileBloc(get<_i39.IProfileRepository>()));
  gh.lazySingleton<_i46.PurchaseBloc>(
      () => _i46.PurchaseBloc(get<_i41.ISubscriptionRepository>()));
  gh.lazySingleton<_i47.RegisterBloc>(
      () => _i47.RegisterBloc(get<_i30.IAuthFacade>()));
  gh.lazySingleton<_i48.RoomsBloc>(
      () => _i48.RoomsBloc(get<_i32.IChatRepository>()));
  gh.lazySingleton<_i49.SubscriptionBloc>(
      () => _i49.SubscriptionBloc(get<_i41.ISubscriptionRepository>()));
  gh.lazySingleton<_i50.UpdateProfileBloc>(
      () => _i50.UpdateProfileBloc(get<_i39.IProfileRepository>()));
  gh.lazySingleton<_i51.AuthBloc>(() => _i51.AuthBloc(
      get<_i30.IAuthFacade>(), get<_i35.INotificationRepository>()));
  gh.lazySingleton<_i52.ChatroomBloc>(
      () => _i52.ChatroomBloc(get<_i32.IChatRepository>()));
  return get;
}

class _$RegisterModule extends _i53.RegisterModule {}
