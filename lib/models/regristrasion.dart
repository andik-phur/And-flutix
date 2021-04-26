part of 'models.dart';

class RegristasionData {
  String name;
  String email;
  String password;
  List<String> selectedGenres;
  String selectedLang;
  File profilImage;

  RegristasionData({
    this.name = "",
    this.email = "",
    this.password = "",
    this.selectedGenres = const [],
    this.selectedLang = "",
    this.profilImage,
  });
}
