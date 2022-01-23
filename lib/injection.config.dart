// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:awesome_notifications/awesome_notifications.dart' as _i3;
import 'package:cloud_firestore/cloud_firestore.dart' as _i8;
import 'package:cloud_functions/cloud_functions.dart' as _i9;
import 'package:connectivity_plus/connectivity_plus.dart' as _i5;
import 'package:firebase_analytics/firebase_analytics.dart' as _i6;
import 'package:firebase_auth/firebase_auth.dart' as _i7;
import 'package:firebase_messaging/firebase_messaging.dart' as _i10;
import 'package:firebase_storage/firebase_storage.dart' as _i11;
import 'package:geocoding/geocoding.dart' as _i12;
import 'package:geoflutterfire/geoflutterfire.dart' as _i13;
import 'package:geolocator/geolocator.dart' as _i14;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive_flutter/hive_flutter.dart' as _i15;
import 'package:image_picker/image_picker.dart' as _i25;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i26;

import 'application/app/app_bloc.dart' as _i30;
import 'application/auth/auth_bloc.dart' as _i49;
import 'application/auth/login/login_bloc.dart' as _i43;
import 'application/auth/register/register_bloc.dart' as _i46;
import 'application/chat/chatroom/chatroom_bloc.dart' as _i50;
import 'application/chat/rooms/rooms_bloc.dart' as _i47;
import 'application/home/home_controller.dart' as _i16;
import 'application/landing/bottom_tab_controller.dart' as _i4;
import 'application/notification/notification_bloc.dart' as _i27;
import 'application/post/post_bloc.dart' as _i44;
import 'application/profile/profile_bloc.dart' as _i45;
import 'application/profile/update_profile/update_profile_bloc.dart' as _i48;
import 'application/subscription/subscription_bloc.dart' as _i29;
import 'domain/auth/i_auth_facade.dart' as _i32;
import 'domain/chat/i_chat_repository.dart' as _i34;
import 'domain/core/interfaces/i_handle_error.dart' as _i17;
import 'domain/core/interfaces/i_location_service.dart' as _i19;
import 'domain/core/interfaces/i_network_service.dart' as _i36;
import 'domain/core/interfaces/i_storage.dart' as _i21;
import 'domain/notification/i_notification_repository.dart' as _i37;
import 'domain/post/i_post_repository.dart' as _i39;
import 'domain/profile/i_profile_repository.dart' as _i41;
import 'domain/subscription/i_subscription_repository.dart' as _i23;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i33;
import 'infrastructure/chat/chat_repository.dart' as _i35;
import 'infrastructure/core/handle_error.dart' as _i18;
import 'infrastructure/core/location_service.dart' as _i20;
import 'infrastructure/core/register_module.dart' as _i51;
import 'infrastructure/core/storage.dart' as _i22;
import 'infrastructure/notification/notification_repository.dart' as _i38;
import 'infrastructure/post/post_repository.dart' as _i40;
import 'infrastructure/profile/profile_repository.dart' as _i42;
import 'infrastructure/subscription/subscription_repository.dart' as _i24;
import 'presentation/app_widget.dart' as _i31;
import 'simple_bloc_delegate.dart'
    as _i28; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.AwesomeNotifications>(
      () => registerModule.awesomeNotifications);
  gh.lazySingleton<_i4.BottomTabController>(() => _i4.BottomTabController());
  gh.lazySingleton<_i5.Connectivity>(() => registerModule.connectivity);
  gh.lazySingleton<_i6.FirebaseAnalytics>(() => registerModule.analytics);
  gh.lazySingleton<_i7.FirebaseAuth>(() => registerModule.firebaseAuth);
  gh.lazySingleton<_i8.FirebaseFirestore>(
      () => registerModule.firebaseFirestore);
  gh.lazySingleton<_i9.FirebaseFunctions>(() => registerModule.functions);
  gh.lazySingleton<_i10.FirebaseMessaging>(() => registerModule.messaging);
  gh.lazySingleton<_i11.FirebaseStorage>(() => registerModule.firebaseStorage);
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
  gh.lazySingleton<_i23.ISubscriptionRepository>(() =>
      _i24.SubscriptionRepository(
          get<_i7.FirebaseAuth>(), get<_i8.FirebaseFirestore>()));
  gh.lazySingleton<_i25.ImagePicker>(() => registerModule.imagePicker);
  gh.lazySingleton<_i26.Logger>(() => registerModule.logger);
  gh.lazySingleton<_i27.NotificationBloc>(() => _i27.NotificationBloc());
  gh.factory<_i28.SimpleBlocObserver>(
      () => _i28.SimpleBlocObserver(get<_i26.Logger>()));
  gh.factory<String>(() => registerModule.baseUrl, instanceName: 'baseUrl');
  gh.lazySingleton<_i29.SubscriptionBloc>(
      () => _i29.SubscriptionBloc(get<_i23.ISubscriptionRepository>()));
  gh.lazySingleton<_i30.AppBloc>(
      () => _i30.AppBloc(get<_i21.IStorage<dynamic>>(), get<_i26.Logger>()));
  gh.lazySingleton<_i31.AppWidget>(() => _i31.AppWidget(
      get<_i6.FirebaseAnalytics>(),
      get<_i3.AwesomeNotifications>(),
      get<_i26.Logger>()));
  gh.lazySingleton<_i32.IAuthFacade>(() => _i33.FirebaseAuthFacade(
      get<_i7.FirebaseAuth>(),
      get<_i8.FirebaseFirestore>(),
      get<_i26.Logger>()));
  gh.lazySingleton<_i34.IChatRepository>(() => _i35.ChatRepository(
      get<_i7.FirebaseAuth>(),
      get<_i8.FirebaseFirestore>(),
      get<_i9.FirebaseFunctions>(),
      get<_i26.Logger>()));
  await gh.lazySingletonAsync<_i36.INetworkService>(
      () => registerModule.network(
          get<String>(instanceName: 'baseUrl'), get<_i21.IStorage<dynamic>>()),
      preResolve: true);
  gh.lazySingleton<_i37.INotificationRepository>(() =>
      _i38.NotificationRepository(
          get<_i26.Logger>(),
          get<_i10.FirebaseMessaging>(),
          get<_i8.FirebaseFirestore>(),
          get<_i7.FirebaseAuth>()));
  gh.lazySingleton<_i39.IPostRepository>(() => _i40.PostRepository(
      get<_i8.FirebaseFirestore>(),
      get<_i7.FirebaseAuth>(),
      get<_i13.Geoflutterfire>(),
      get<_i19.ILocationService>(),
      get<_i26.Logger>()));
  gh.lazySingleton<_i41.IProfileRepository>(() => _i42.ProfileRepository(
      get<_i7.FirebaseAuth>(),
      get<_i8.FirebaseFirestore>(),
      get<_i11.FirebaseStorage>(),
      get<_i26.Logger>(),
      get<_i25.ImagePicker>(),
      get<_i19.ILocationService>(),
      get<_i13.Geoflutterfire>()));
  gh.lazySingleton<_i43.LoginBloc>(
      () => _i43.LoginBloc(get<_i32.IAuthFacade>()));
  gh.lazySingleton<_i44.PostBloc>(() =>
      _i44.PostBloc(get<_i39.IPostRepository>(), get<_i34.IChatRepository>()));
  gh.lazySingleton<_i45.ProfileBloc>(
      () => _i45.ProfileBloc(get<_i41.IProfileRepository>()));
  gh.lazySingleton<_i46.RegisterBloc>(
      () => _i46.RegisterBloc(get<_i32.IAuthFacade>()));
  gh.lazySingleton<_i47.RoomsBloc>(
      () => _i47.RoomsBloc(get<_i34.IChatRepository>()));
  gh.lazySingleton<_i48.UpdateProfileBloc>(
      () => _i48.UpdateProfileBloc(get<_i41.IProfileRepository>()));
  gh.lazySingleton<_i49.AuthBloc>(() => _i49.AuthBloc(
      get<_i32.IAuthFacade>(), get<_i37.INotificationRepository>()));
  gh.lazySingleton<_i50.ChatroomBloc>(
      () => _i50.ChatroomBloc(get<_i34.IChatRepository>()));
  return get;
}

class _$RegisterModule extends _i51.RegisterModule {}
