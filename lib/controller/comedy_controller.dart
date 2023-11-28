import 'package:flutter/material.dart';
import '../genre.dart';
import '../main_menu.dart';
import 'package:letterku/models/comedy_model.dart';



class ComedyController {
  void navigatetoGenre(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Genre1()));
  }

  List<ComedyBooks> getComedyBooks() {
    return [
      ComedyBooks('assets/tentangkamu.png', 'Tentang Kamu', '4.9'),
      ComedyBooks('assets/negeriparabedebah.png', 'Negeri Para Bedebah', '4.1'),
      ComedyBooks('assets/lautbercerita.png', 'Laut Bercerita', '4.3'),
      ComedyBooks('assets/curseinfinity.png', 'Curse Of Infiniti', '4.5'),
      ComedyBooks('assets/memory.png', 'Memory', '4.4'),
      ComedyBooks('assets/deadbirthday.png', 'Dead Bithday', '4.2'),
    ];
  }
}