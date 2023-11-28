import 'package:flutter/material.dart';
import '../genre.dart';
import '../main_menu.dart';

import 'package:letterku/models/horror_model.dart';

class HorrorController {
  void navigatetoGenre(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Genre1()));
  }

  List<HorrorBooks> getHorrorBooks() {
    return [
      HorrorBooks('assets/tentangkamu.png', 'Tentang Kamu', '4.9'),
      HorrorBooks('assets/negeriparabedebah.png', 'Negeri Para Bedebah', '4.1'),
      HorrorBooks('assets/lautbercerita.png', 'Laut Bercerita', '4.3'),
      HorrorBooks('assets/curseinfinity.png', 'Curse Of Infiniti', '4.5'),
      HorrorBooks('assets/memory.png', 'Memory', '4.4'),
      HorrorBooks('assets/deadbirthday.png', 'Dead Bithday', '4.2'),
    ];
  }
}