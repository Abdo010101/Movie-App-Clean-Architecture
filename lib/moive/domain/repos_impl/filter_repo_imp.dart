import 'dart:developer';

import 'package:flutter_application_1/moive/domain/response/generes_response.dart';
import 'package:flutter_application_1/moive/sharred/constants/app_values.dart';
import 'package:flutter_application_1/moive/sharred/core/network/dio_manager.dart';

import '../../data/dataSource/remote/repos/filter_repo.dart';

class FilterRepImp extends FilterRepostory {
  DioManager _dio;
  FilterRepImp(this._dio);
  @override
  Future<List<GenreResponse>> getGenre() async {
    List<GenreResponse> res = <GenreResponse>[];
    try {
      await _dio.get('genre/movie/list', json: {
        'api_key': AppValues.apiKey,
        'language': "en_Us",
      }).then((value) {
        res = (value.data['genres'] as List).map((e) {
          return GenreResponse.fromJson(e);
        }).toList();
      });
      return res;
    } catch (e) {
      log(e.toString());
      return res;
    }
  }
}
