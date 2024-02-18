import '../response/generes_response.dart';

class FilterModel {
  int? year;
  List<GenreResponse>? genreSelected;

  FilterModel({this.genreSelected, this.year});
}
