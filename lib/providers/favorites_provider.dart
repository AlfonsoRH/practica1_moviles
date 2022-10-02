import 'package:flutter/cupertino.dart';

class FavoriteSongs with ChangeNotifier {
  List<dynamic> _favorites = [];

  List<dynamic> get favorites => _favorites;

  void addFavorite(song) {
    _favorites.add(song);
    print('favoritos: $_favorites');
    notifyListeners();
  }

  void removeFavorite(title, artist) {
    _favorites.removeWhere(
        (element) => element['title'] == title && element['artista'] == artist);
    print('favoritos: $_favorites');
    notifyListeners();
  }

  bool searchFavorite(title, artist) {
    for (var i = 0; i < _favorites.length; i++) {
      if (_favorites[i]['title'] == title &&
          _favorites[i]['artista'] == artist) {
        return true;
      }
    }
    return false;
  }
}
