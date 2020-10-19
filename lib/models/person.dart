import 'package:uuid/uuid.dart';

class Person {
  String id;
  String name;

  Person(String id, String name) {
    this.id = id;
    this.name = name;
  }

  factory Person.build(String name) {
    return Person(Uuid().v4(), name);
  }

  Map<String, dynamic> toMap() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
      };
}
