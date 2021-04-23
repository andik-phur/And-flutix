part of 'models.dart';

class User extends Equatable {
  final String id;
  final String email;
  final String name;
  final String profilPicture;
  final List<String> selectedGenres;
  final String selectedLanguage;
  final int balance;

  User(this.id, this.email,
      {this.name,
      this.profilPicture,
      this.balance,
      this.selectedGenres,
      this.selectedLanguage});

  @override
  String toString() {
    return "[$id] - $name, $email";
  }

  @override
  List<Object> get props => [
        id,
        email,
        name,
        profilPicture,
        selectedLanguage,
        selectedGenres,
        balance
      ];
}
