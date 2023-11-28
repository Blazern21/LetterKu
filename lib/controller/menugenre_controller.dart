import 'package:letterku/models/menugenre_model.dart';

class MenusGenreController{
  List<MenuGenreBooks> getMenuGenreBooks(){
    return[
      MenuGenreBooks('romance.png', 'Romance'),
      MenuGenreBooks('fantasy.png', 'Fantasy'),
      MenuGenreBooks('psychological.png', 'Fiction'),
      MenuGenreBooks('mystery.png', 'Thriller'),
    ];
  }
}

