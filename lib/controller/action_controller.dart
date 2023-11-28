import 'package:flutter/material.dart';
import '../genre.dart';
import '../main_menu.dart';
import 'package:letterku/models/action_model.dart';

class ActionController {
  void navigatetoGenre(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Genre1()));
  }

  List<ActionBooks> getActionBooks() {
    return [
      ActionBooks('assets/tentangkamu.png', 'Tentang Kamu', '4.9'),
      ActionBooks('assets/negeriparabedebah.png', 'Negeri Para Bedebah', '4.1'),
      ActionBooks('assets/lautbercerita.png', 'Laut Bercerita', '4.3'),
      ActionBooks('assets/curseinfinity.png', 'Curse Of Infiniti', '4.5'),
      ActionBooks('assets/memory.png', 'Memory', '4.4'),
      ActionBooks('assets/deadbirthday.png', 'Dead Bithday', '4.2'),
    ];
  }
}