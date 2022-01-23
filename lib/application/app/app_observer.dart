import 'package:crave_app/application/app/app_bloc.dart';
import 'package:crave_app/domain/auth/user_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

useWidgetLifecycleObserver(BuildContext context) {
  return use(const _WidgetObserver());
}

class _WidgetObserver extends Hook<void> {
  const _WidgetObserver();

  @override
  HookState<void, Hook<void>> createState() {
    return _WidgetObserverState();
  }
}

class _WidgetObserverState extends HookState<void, _WidgetObserver>
    with WidgetsBindingObserver {
  @override
  void build(BuildContext context) {}

  @override
  void initHook() {
    super.initHook();
    WidgetsBinding.instance?.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance?.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      context.read<AppBloc>().add(
            AppEvent.statusChanged(
              UserStatus(
                isOnline: true,
                lastSeen: DateTime.now(),
              ),
            ),
          );
    } else {
      context.read<AppBloc>().add(
            AppEvent.statusChanged(
              UserStatus(
                isOnline: false,
                lastSeen: DateTime.now(),
              ),
            ),
          );
    }
    super.didChangeAppLifecycleState(state);
  }
}
