import 'package:app/data/database.dart';
import 'package:app/models/person.dart';
import 'package:get_it/get_it.dart';
import 'package:sqflite/sqflite.dart';

class PersonRepository {
  final Connection cnn;

  PersonRepository() : cnn = GetIt.I.get<Connection>();

  Future<bool> insert(Person person) async {
    final db = await cnn.open();

    try {
      await db.transaction((txn) async {
        txn.insert(
          "people",
          person.toMap(),
          conflictAlgorithm: ConflictAlgorithm.replace,
        );
      });
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<List<Person>> getAll() async {
    try {
      final _db = await cnn.open();

      final result = await _db.query(
        "people",
        orderBy: "name",
      );

      if (result == null || result.length == 0) return <Person>[];

      return List.generate(result.length - 1, (index) {
        return Person(result[index]["id"], result[index]["name"]);
      });
    } catch (e) {
      print(e);
      return null;
    }
  }
}
