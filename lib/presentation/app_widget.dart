import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:crave_app/application/app/app_bloc.dart';
import 'package:crave_app/application/auth/auth_bloc.dart';
import 'package:crave_app/application/auth/login/login_bloc.dart';
import 'package:crave_app/application/auth/register/register_bloc.dart';
import 'package:crave_app/application/chat/chatroom/chatroom_bloc.dart';
import 'package:crave_app/application/chat/rooms/rooms_bloc.dart';
import 'package:crave_app/application/notification/notification_bloc.dart';
import 'package:crave_app/application/post/post_bloc.dart';
import 'package:crave_app/application/profile/profile_bloc.dart';
import 'package:crave_app/application/profile/update_profile/update_profile_bloc.dart';
import 'package:crave_app/application/subscription/subscription_bloc.dart';
import 'package:crave_app/domain/core/theme/theme.dart';
import 'package:crave_app/injection.dart';
import 'package:crave_app/presentation/core/i10n/l10n.dart';
import 'package:crave_app/presentation/routers/routers.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@lazySingleton
class AppWidget extends StatelessWidget {
  final FirebaseAnalytics _analytics;
  final AwesomeNotifications _awesomeNotifications;
  final Logger logger;
  // ignore: use_key_in_widget_constructors
  const AppWidget(this._analytics, this._awesomeNotifications, this.logger)
      : super();

  @override
  Widget build(BuildContext context) {
    final observer = FirebaseAnalyticsObserver(analytics: _analytics);
    _awesomeNotifications.initialize(
      // set the icon to null if you want to use the default app icon
      'resource://drawable/res_app_icon',
      [
        NotificationChannel(
            channelGroupKey: 'basic_channel_group',
            channelKey: 'basic_channel',
            channelName: 'Basic notifications',
            channelDescription: 'Notification channel for basic tests',
            defaultColor: const Color(0xFF9D50DD),
            ledColor: Colors.white)
      ],
      // Channel groups are only visual and are not required
      channelGroups: [
        NotificationChannelGroup(
            channelGroupkey: 'basic_channel_group',
            channelGroupName: 'Basic group')
      ],
      debug: false,
    );
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppBloc>(
          create: (context) => getIt<AppBloc>()..add(const AppEvent.started()),
        ),
        BlocProvider<AuthBloc>(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
        BlocProvider<SubscriptionBloc>(
          create: (context) => getIt<SubscriptionBloc>(),
        ),
        BlocProvider<LoginBloc>(
          create: (_) => getIt<LoginBloc>(),
        ),
        BlocProvider<RegisterBloc>(
          create: (_) => getIt<RegisterBloc>(),
        ),
        BlocProvider<NotificationBloc>(
          create: (_) => getIt<NotificationBloc>(),
        ),
        BlocProvider<ProfileBloc>(
          create: (_) => getIt<ProfileBloc>(),
        ),
        BlocProvider<UpdateProfileBloc>(
          create: (_) => getIt<UpdateProfileBloc>(),
        ),
        BlocProvider<PostBloc>(
          create: (_) => getIt<PostBloc>(),
        ),
        BlocProvider<RoomsBloc>(
          create: (_) => getIt<RoomsBloc>(),
        ),
        BlocProvider<ChatroomBloc>(
          create: (_) => getIt<ChatroomBloc>(),
        ),
      ],
      child: BlocBuilder<AppBloc, AppState>(
        builder: (context, state) => ScreenUtilInit(
          designSize: const Size(375, 812),
          builder: () => GetMaterialApp(
            title: 'Crave',
            // debugShowCheckedModeBanner: false,
            localizationsDelegates: const [
              I10n.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: I10n.delegate.supportedLocales,
            theme: ThemeData(
              primarySwatch: AppColors.mainMaterialColor,
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            navigatorObservers: [observer],
            getPages: Routers().routers,
            initialRoute: Routers.main,
          ),
        ),
      ),
    );
  }
}
