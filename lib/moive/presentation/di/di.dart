// we will use GetIt

import 'package:flutter_application_1/moive/data/dataSource/local/preference.dart';
import 'package:flutter_application_1/moive/data/dataSource/remote/repos/movie_repo.dart';
import 'package:flutter_application_1/moive/domain/repos_impl/filter_repo_imp.dart';
import 'package:flutter_application_1/moive/domain/repos_impl/movie_repo_imp.dart';
import 'package:flutter_application_1/moive/sharred/core/network/dio_manager.dart';
import 'package:get_it/get_it.dart';
import '../../data/dataSource/remote/repos/filter_repo.dart';

final GetIt getIt = GetIt.instance;

void setUp() {
  //!external
  //!core
  // Preferecnes and DioManager
  getIt.registerLazySingleton(() => Preferences());
  getIt.registerLazySingleton(() => DioManager());
  //! feature
  setupRepo();
  //!bloc
  setupBloc();
}

void setupRepo() {
  getIt.registerSingleton<FilterRepostory>(
      FilterRepImp(getIt.get<DioManager>()));
  getIt.registerSingleton<MovieRepo>(MovieRepoImp(getIt.get<DioManager>()));
}

void setupBloc() {}
