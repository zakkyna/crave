import 'package:crave_app/injection.dart';
import 'package:crave_app/presentation/app_widget.dart';
import 'package:crave_app/simple_bloc_delegate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
export 'package:crave_app/presentation/app_widget.dart';

void main() async {
  await Hive.initFlutter();
  await configureInjection(Environment.dev);
  BlocOverrides.runZoned(
    () {
      runApp(const AppWidget());
    },
    blocObserver: getIt<SimpleBlocObserver>(),
  );
}
