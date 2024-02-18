import 'package:flutter_application_1/moive/domain/requests/movies_request.dart';

import '../../../../domain/requests/filter_request.dart';
import '../../../../domain/requests/movie_detail_request.dart';
import '../../../../domain/requests/movie_query_rquest.dart';
import '../../../../domain/response/movie_response.dart';
import '../../../../domain/response/movies_response.dart';

abstract class MovieRepo {
  Future<List<MoviesResponse>> getMovies(final MoviesRequest param);
  Future<List<MoviesResponse>> getMoviesbyFilter(final FilterRequest param);
  Future<List<MoviesResponse>> getMoviesbyQuery(final MovieQueryRequest param);
  Future<MovieResponse?> getMoviesDetail(final MovieDetailRequest param);
}
