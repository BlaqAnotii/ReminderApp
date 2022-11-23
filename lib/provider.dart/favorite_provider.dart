import 'package:flutter/material.dart';

class favoriteProvider with ChangeNotifier{
  List<int> favoriteContacts = [];
   get favorites => favoriteContacts;

    addFavorite (int index){
    favoriteContacts.add(index);
    notifyListeners();
    }

  removeFavorite (int index){
    favoriteContacts.remove(index);
    notifyListeners();
  }
}