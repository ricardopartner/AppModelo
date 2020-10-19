import 'package:app/data/database.dart';
import 'package:app/repositories/person_repository.dart';
import 'package:app/stores/person_store.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'app.dart';

void main() {
  GetIt.I.registerSingleton<PersonStore>(PersonStore());
  GetIt.I.registerLazySingleton(() => Connection());
  GetIt.I.registerFactory(() => PersonRepository());
  //GetIt.I.registerFactory(() => PersonRepository());

  runApp(App());
}
