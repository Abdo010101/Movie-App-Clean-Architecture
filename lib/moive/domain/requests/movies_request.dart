import '../../sharred/constants/app_values.dart';
import '../../sharred/utls/utils.dart';

class MoviesRequest {
  String? apiKey, lang, sortBy;
  int? page;

  MoviesRequest({this.apiKey, this.lang, this.page, this.sortBy});
  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};
    data['api_key'] = apiKey ?? AppValues.apiKey;
    data['language'] = lang ?? getLangCode();
    data['sort_by'] = sortBy ?? 'with_genres';
    data['page'] = page ?? 1;
    return data;
  }
}
