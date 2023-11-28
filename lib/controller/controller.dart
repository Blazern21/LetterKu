import 'package:flutter/material.dart';
import 'package:letterku/genre.dart';
import 'package:letterku/register.dart';
import 'package:letterku/main_menu.dart';
import 'package:letterku/models/model.dart';


// Fantasy Controller
class FantasyController {
  void navigatetoGenre(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Genre1()));
  }

  List<FantasyBooks> getFantasyBooks() {
    return [
      FantasyBooks('assets/tentangkamu.png', 'Tentang Kamu', '4.9'),
      FantasyBooks('assets/negeriparabedebah.png', 'Negeri Para Bedebah', '4.1'),
      FantasyBooks('assets/lautbercerita.png', 'Laut Bercerita', '4.3'),
      FantasyBooks('assets/curseinfinity.png', 'Curse Of Infiniti', '4.5'),
      FantasyBooks('assets/memory.png', 'Memory', '4.4'),
      FantasyBooks('assets/deadbirthday.png', 'Dead Bithday', '4.2'),
    ];
  }
}


// Controller For Genre, Author, Login Screen, Account Edit, Complete Profile
class ToMainMenu {
  void navigatetoMainMenu(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => MainMenuScreen()));
  }
}

// Main Menu Controller
class MainMenuController {
  void navigatetoGenre(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Genre1()));
  }
}

// Controller For Login Screen
class ToRegister {
  void navigatetoRegister(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => RegisterPage()));
  }
}