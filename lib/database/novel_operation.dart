import '../database/database_helper.dart';
import '../models/novels_model.dart';
import 'package:sqflite/sqflite.dart';

class novelOperation {
  Future<List<Novels>> getNovelsByGenre(String? novelGenre) async {
    Database db = await DatabaseHelper.instance.database;
    List<Map<String, dynamic>> novelsData = await db.query(
      'novels',
      where: 'novelGenre = ?',
      whereArgs: [novelGenre],
    );

    print('Novels Data: $novelsData'); // Add this line to print novelsData

    List<Novels> novels = novelsData.map((novel) => Novels.formMap(novel)).toList();
    return novels;
  }
}

