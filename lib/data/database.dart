import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class Connection {
  Database _database;

  Future<Database> open() async {
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, "database.db");
    _database = await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );

    return _database;
  }

  _onCreate(Database db, int version) async {
    await db.execute(
        "CREATE TABLE people (id TEXT NOT NULL PRIMARY KEY, name TEXT NOT NULL )");
  }

  void close() async {
    if (_database != null && _database.isOpen) await _database.close();
    _database = null;
  }

  void dispose() {
    close();
  }
}
