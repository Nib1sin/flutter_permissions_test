import 'package:go_router/go_router.dart';

import 'package:flutter_permisos_estados/presentation/screens/screens.dart';
final router = GoRouter(
  routes: [
  
    //! General
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),

    //! Permisos
    GoRoute(
      path: '/permissions',
      builder: (context, state) => const PermissionsScreen(),
    ),

    //! Sensors
    GoRoute(
      path: '/gyroscopio',
      builder: (context, state) => const GyroscopeScreen(),
    ),
    GoRoute(
      path: '/acelerometro',
      builder: (context, state) => const AccelerometerScreen(),
    ),
    GoRoute(
      path: '/magnetometro',
      builder: (context, state) => const MagnetometerScreen(),
    ),
    GoRoute(
      path: '/gyroscopio-ball',
      builder: (context, state) => const GyroscopeBallScreen(),
    ),
    GoRoute(
      path: '/brujula',
      builder: (context, state) => const CompassScreen(),
    ),


]);