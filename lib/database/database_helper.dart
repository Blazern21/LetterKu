import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper{
  static const _databaseName = 'Letterku.db';
  static const _databaseVersion = 1;

  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database? _db;

  Future<Database> get database async{
    if(_db != null) return _db!;
    _db = await _initDatabase();
    return _db!;
  }

  _initDatabase() async{
    Directory dataDirectory = await getApplicationDocumentsDirectory();
    String dbPath = join(dataDirectory.path, _databaseName);
    return await openDatabase(dbPath, version: _databaseVersion, onCreate: await _onCreateDB);
  }

  Future _onCreateDB(Database db, int version) async{
    await db.execute('''
      CREATE TABLE user(
        userId INTEGER PRIMARY KEY AUTOINCREMENT,
        password TEXT NOT NULL,
        email TEXT NOT NULL,
        fullname TEXT NOT NULL,
        birthdate TEXT NOT NULL,
        phone INTEGER NOT NULL,
        country TEXT NOT NULL
      )
''');

    await db.execute('''
      CREATE TABLE novels(
        novelID INTEGER PRIMARY KEY AUTOINCREMENT,
        novelName TEXT NOT NULL,
        novelGenre TEXT NOT NULL,
        novelAuthor TEXT NOT NULL,
        novelRating TEXT NOT NULL,
        novelHalaman INTEGER NOT NULL,
        novelSinopsis TEXT NOT NULL,
        novelPic TEXT NOT NULL,
        novelDate TEXT NOT NULL,
        novelContent TEXT NOT NULL,
      )
''');
  }

}