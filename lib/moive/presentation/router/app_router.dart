// we will use some packge like go router

import 'package:flutter/material.dart';
import 'package:flutter_application_1/moive/presentation/router/app_routes.dart';
import 'package:flutter_application_1/moive/presentation/ui/home/home_screen.dart';
import 'package:flutter_application_1/moive/presentation/ui/splash/splash_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static GoRouter router = GoRouter(routes: [
    GoRoute(
        path: AppRoutes.splash,
        builder: (BuildContext ctx, state) {
          return const SplashScreen();
        }),
    GoRoute(
        path: AppRoutes.home,
        builder: (ctx, state) {
          return const HomeSreen();
        }),
    // GoRoute(path: AppRoutes.setting, builder: (ctx,state){return const SettingScreen}),
    // GoRoute(path: AppRoutes.movie, builder: (ctx,state){return const MovieScreen}),
  ]);
}
