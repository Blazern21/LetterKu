import 'package:letterku/models/menu_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class MenusController {
  static late Database _database;

  Future<Database> get database async {
    // if (_database != null) return _database;
    _database = await initDB();
    return _database;
  }

  Future<Database> initDB() async {
    String path = join(await getDatabasesPath(), 'test.db');
    return await openDatabase(path);
  }

  Future<List<MenuBooks1>> getMenuBooks() async {
    final db = await database; // Tambahkan await di sini
    String query = 'SELECT NovelID, NovelName, NovelRating FROM Novel';

    List<Map<String, dynamic>> data = await db.rawQuery(query); // Tambahkan await di sini
    List<MenuBooks1> yourModels = data.map((map) => MenuBooks1(
      NovelID: map['NovelID'],
      NovelName: map['NovelName'],
      NovelGenre: map['NovelRating'], // Sesuaikan dengan nama kolom yang benar
    )).toList();
    return yourModels;
  }

  List<MenuBooks> getRealMenuBooks(){
    return[
      MenuBooks('tentangkamu.png', 'Tentang Kamu', '4.9'),
      MenuBooks('negeriparabedebah.png', 'Negeri Para Bedebah', '4.3'),
      MenuBooks('lautbercerita.png', 'Laut Bercerita', '4.6'),
      MenuBooks('curseinfinity.png', 'Curse Infinity', '4.5'),
    ];
  }
}