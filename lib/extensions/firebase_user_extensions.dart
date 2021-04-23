part of 'extensions.dart';

extension FirebaseUserExtensions on FirebaseUser {
  User convertToUser(
          {String name = "No Name",
          List<String> selectedGenres = const [],
          String selectedLanguange = "english",
          int balance = 50000,
          String selectedLanguage}) =>
      User(this.uid, this.email,
          name: name,
          balance: balance,
          selectedGenres: selectedGenres,
          selectedLanguage: selectedLanguange);
  Future<User> fromFirestore() async => await UserServices.getUser(this.uid);
}
