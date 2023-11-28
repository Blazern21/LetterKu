import 'package:flutter/material.dart';
import '../main_menu.dart';



class GenreController {
  void navigatetoMainMenu(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MainMenuScreen()));
  }

  void navigatetoGenrePage(BuildContext context, String genre){
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MainMenuScreen()));
  }
}