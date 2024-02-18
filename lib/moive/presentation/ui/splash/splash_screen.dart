import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/moive/presentation/router/app_routes.dart';
import 'package:flutter_application_1/moive/presentation/ui/splash/cubit/splash_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../sharred/constants/string_keys.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashCubit, SplashState>(
      bloc: SplashCubit(goHome: () {
        context.go(AppRoutes.home);
      }),
      builder: (context, state) {
        return Scaffold(
          body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset('assets/images/app_icon.png'),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    StringsKeys.movies.tr(),
                    style: const TextStyle(fontSize: 24),
                  ),
                ]),
          ),
        );
      },
    );
  }
}
