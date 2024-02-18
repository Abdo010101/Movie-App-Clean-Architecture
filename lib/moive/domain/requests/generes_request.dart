import '../../sharred/constants/app_values.dart';
import '../../sharred/utls/utils.dart';

class GenrersRequest {
  String? apiKey, lang;

  GenrersRequest({this.apiKey, this.lang});

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {};
    data['api_key'] = apiKey ?? AppValues.apiKey;
    data['language'] = lang ?? getLangCode();
    return data;
  }
}
