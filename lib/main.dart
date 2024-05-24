import 'package:flutter/material.dart';
import 'package:flutter_permisos_estados/config/config.dart';
import 'package:flutter_permisos_estados/presentation/providers/app_state_provider.dart';
import 'package:flutter_permisos_estados/presentation/providers/permissions/permissions_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerStatefulWidget {
  const MainApp({super.key});

  @override
  MainAppState createState() => MainAppState();
}

class MainAppState extends ConsumerState<MainApp> with WidgetsBindingObserver{
  
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    ref.read( permissionsProvider.notifier ).checkPermissions();
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(this);
  }

   @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    ref.read( appStateProvider.notifier ).state = state;
    if ( state == AppLifecycleState.resumed ) {
      ref.read( permissionsProvider.notifier ).checkPermissions();
    }
    super.didChangeAppLifecycleState(state);
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      theme: AppTheme().getTheme(),
      debugShowCheckedModeBanner: false,
    );
  }
}