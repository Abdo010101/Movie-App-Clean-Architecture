import 'dart:developer';

import 'package:flutter_application_1/moive/data/dataSource/remote/repos/movie_repo.dart';
import 'package:flutter_application_1/moive/domain/requests/filter_request.dart';
import 'package:flutter_application_1/moive/domain/requests/movie_detail_request.dart';
import 'package:flutter_application_1/moive/domain/requests/movie_query_rquest.dart';
import 'package:flutter_application_1/moive/domain/requests/movies_request.dart';
import 'package:flutter_application_1/moive/domain/response/movie_response.dart';
import 'package:flutter_application_1/moive/domain/response/movies_response.dart';
import 'package:flutter_application_1/moive/sharred/core/network/dio_manager.dart';

class MovieRepoImp extends MovieRepo {
  final DioManager _dio;
  MovieRepoImp(this._dio);
  @override
  Future<List<MoviesResponse>> getMovies(MoviesRequest param) async {
    List<MoviesResponse> res = <MoviesResponse>[];

    try {
      await _dio.get('discover/movie', json: param.toJson()).then((response) {
        res = (response.data['results'] as List).map((e) {
          return MoviesResponse.fromJson(e);
        }).toList();
      });
      return res;
    } catch (e) {
      log(e.toString());
      return res;
    }
  }

  @override
  Future<List<MoviesResponse>> getMoviesbyFilter(FilterRequest param) async {
    List<MoviesResponse> res = <MoviesResponse>[];
    try {
      await _dio.get('discover/movie', json: param.toJson()).then((value) {
        res = (value.data['results'] as List).map((e) {
          return MoviesResponse.fromJson(e);
        }).toList();
      });
      return res;
    } catch (e) {
      log(e.toString());
      return res;
    }
  }

  @override
  Future<List<MoviesResponse>> getMoviesbyQuery(MovieQueryRequest param) async {
    List<MoviesResponse> res = <MoviesResponse>[];
    try {
      await _dio.get('search/movie', json: param.toJson()).then((value) {
        res = (value.data['results'] as List).map((e) {
          return MoviesResponse.fromJson(e);
        }).toList();
      });
      return res;
    } catch (e) {
      log(e.toString());
      return res;
    }
  }

  @override
  Future<MovieResponse?> getMoviesDetail(MovieDetailRequest param) async {
    MovieResponse? res;
    try {
      await _dio
          .get('movie/${param.movieId}', json: param.toJson())
          .then((value) {
        res = MovieResponse.fromJson(value.data);
      });
      return res;
    } catch (e) {
      log(e.toString());
      return res;
    }
  }
}
