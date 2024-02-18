import '../../sharred/constants/app_values.dart';
import '../../sharred/utls/utils.dart';

class MovieQueryRequest {
  String? apiKey, lang, query;
  int? page;

  MovieQueryRequest({this.apiKey, this.lang, this.page, this.query});
  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};
    data['api_key'] = apiKey ?? AppValues.apiKey;
    data['language'] = lang ?? getLangCode();
    data['query'] = query ?? '';
    data['page'] = page ?? 1;
    return data;
  }
}
