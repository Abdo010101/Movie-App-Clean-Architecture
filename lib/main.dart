import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_application_1/moive/presentation/router/app_routes.dart';
import 'package:flutter_application_1/moive/sharred/style/theme.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'moive/data/dataSource/local/preference.dart';
import 'moive/presentation/di/di.dart';
import 'moive/presentation/router/app_router.dart';
//import 'moive/presentation/router/app_routes.dart';
import 'moive/sharred/constants/app_values.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  setUp();
  await Hive.initFlutter();
  await getIt<Preferences>().openBox();
  if (kIsWeb) {
    setPathUrlStrategy();
    SystemNavigator.routeInformationUpdated(
      uri: Uri.parse(AppRoutes.splash),
      location: AppRoutes.splash,
    );
  }

  runApp(EasyLocalization(
      supportedLocales: AppValues.supportedLocales,
      path: AppValues.localesPath,
      fallbackLocale: AppValues.localeEN,
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return OverlaySupport.global(
      child: MaterialApp.router(
        title: AppValues.appName,
        theme: AppThemes.getTheme(),
        locale: context.locale,
        supportedLocales: context.supportedLocales,
        localizationsDelegates: context.localizationDelegates,
        routerDelegate: AppRouter.router.routerDelegate,
        routeInformationParser: AppRouter.router.routeInformationParser,
      ),
    );
  }
}
