import 'package:letterku/models/menuauthor_model.dart';

class MenusAuthorController{
  List<MenuAuthorBooks> getMenuAuthorBooks(){
    return[
      MenuAuthorBooks('astephen.png', 'Stephen Hawking'),
      MenuAuthorBooks('akristin.png', 'Kristin Hannah'),
      MenuAuthorBooks('adavid.png', 'James David'),
      MenuAuthorBooks('amary.png', 'Mary Anne'),
    ];
  }
}

