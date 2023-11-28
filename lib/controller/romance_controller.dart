import 'package:flutter/material.dart';
import 'package:letterku/genre.dart';

import '../main_menu.dart';
import 'package:letterku/models/model.dart';
import '../models/Romance_model.dart';

class RomanceController {
  void navigatetoGenre(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Genre1()));
  }

  List<RomanceBooks> getRomanceBooks() {
    return [
      RomanceBooks('assets/tentangkamu.png', 'Tentang Kamu', '4.9'),
      RomanceBooks('assets/negeriparabedebah.png', 'Negeri Para Bedebah', '4.1'),
      RomanceBooks('assets/lautbercerita.png', 'Laut Bercerita', '4.3'),
      RomanceBooks('assets/curseinfinity.png', 'Curse Of Infiniti', '4.5'),
      RomanceBooks('assets/memory.png', 'Memory', '4.4'),
      RomanceBooks('assets/deadbirthday.png', 'Dead Bithday', '4.2'),
    ];
  }
}