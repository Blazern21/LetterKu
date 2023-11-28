import 'package:flutter/material.dart';
import '../genre.dart';
import '../main_menu.dart';
import 'package:letterku/models/mystery_model.dart';


class MysteryController {
  void navigatetoGenre(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Genre1()));
  }

  List<MysteryBooks> getMysteryBooks() {
    return [
      MysteryBooks('assets/tentangkamu.png', 'Tentang Kamu', '4.9'),
      MysteryBooks('assets/negeriparabedebah.png', 'Negeri Para Bedebah', '4.1'),
      MysteryBooks('assets/lautbercerita.png', 'Laut Bercerita', '4.3'),
      MysteryBooks('assets/curseinfinity.png', 'Curse Of Infiniti', '4.5'),
      MysteryBooks('assets/memory.png', 'Memory', '4.4'),
      MysteryBooks('assets/deadbirthday.png', 'Dead Bithday', '4.2'),
    ];
  }
}