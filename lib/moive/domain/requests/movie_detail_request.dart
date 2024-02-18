import 'package:flutter_application_1/moive/sharred/constants/app_values.dart';
import 'package:flutter_application_1/moive/sharred/utls/utils.dart';

class MovieDetailRequest {
  String? apiKey, lang;
  int? movieId;
  MovieDetailRequest({this.apiKey, this.lang, this.movieId});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};
    data['api_key'] = apiKey ?? AppValues.apiKey;
    data['language'] = lang ?? getLangCode();
    return data;
  }
}
