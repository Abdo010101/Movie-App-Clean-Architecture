import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/moive/sharred/utls/utils.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit({required this.goHome}) : super(SplashLoading()) {
    determineLocation();
  }
  // i need funtion do go home after slash come out
  final void Function() goHome;

  Future<void> determineLocation() async {
    await futureDelayed();
    goHome();
  }
}
