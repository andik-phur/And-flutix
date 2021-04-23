part of "services.dart";

class UserServices {
  static CollectionReference _userCollection =
      Firestore.instance.collection('users');
  static Future<void> updateuser(User user) async {
    String genres = "";
    for (var genre in user.selectedGenres) {
      genres += genre + ((genre != user.selectedGenres.last) ? ',' : '');
    }
    _userCollection.document(user.id).setData({
      'email': user.email,
      'name': user.name,
      'balance': user.balance,
      'selectedGenres': user.selectedGenres,
      'selectedLanguange': user.selectedLanguage,
      'profilePictures': user.profilPicture ?? ""
    });
  }

  static Future<User> getUser(String id) async {
    DocumentSnapshot snapshot = await _userCollection.document(id).get();

    return User(id, snapshot['email'],
        balance: snapshot['balance'],
        profilPicture: snapshot['profilPicture'],
        selectedGenres: (snapshot['selectedGenres'] as List)
            .map((e) => e.toString())
            .toList(),
        selectedLanguage: snapshot['selectedLanguage'],
        name: snapshot['name']);
  }
}
