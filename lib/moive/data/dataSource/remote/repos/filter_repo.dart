import 'package:flutter_application_1/moive/domain/response/generes_response.dart';

abstract class FilterRepostory {
  Future<List<GenreResponse>> getGenre();
}
