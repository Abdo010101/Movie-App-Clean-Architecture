import 'package:flutter_application_1/moive/sharred/constants/app_values.dart';
import 'package:flutter_application_1/moive/sharred/utls/utils.dart';

class FilterRequest {
  String? apiKey, lang, sortBy, withGeners;
  int? year, page;

  FilterRequest(
      {this.apiKey,
      this.lang,
      this.page,
      this.sortBy,
      this.withGeners,
      this.year});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = <String, dynamic>{};
    data['api_key'] = apiKey ?? AppValues.apiKey;
    data['language'] = lang ?? getLangCode();
    data['sort_by'] = sortBy ?? "with_genres";
    data['with_genres'] = withGeners ?? "";
    if (data != null) {
      data['year'] = year ?? 2005;
    }
    data['page'] = page ?? 1;
    return data;
  }
}
