import 'package:crave_app/application/app/app_bloc.dart';
import 'package:crave_app/application/auth/auth_bloc.dart';
import 'package:crave_app/application/subscription/subscription_bloc.dart';
import 'package:crave_app/domain/core/theme/theme.dart';
import 'package:crave_app/injection.dart';
import 'package:crave_app/presentation/core/i10n/l10n.dart';
import 'package:crave_app/presentation/routers/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            getPages: Routers().routers,
            initialRoute: Routers.main,
          ),
        ),
      ),
    );
  }
}
