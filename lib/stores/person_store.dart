import 'package:app/models/person.dart';
import 'package:app/repositories/person_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
part 'person_store.g.dart';

class PersonStore = _PersonStoreBase with _$PersonStore;

abstract class _PersonStoreBase with Store {
  @action
  void init() {
    var repository = GetIt.I.get<PersonRepository>();
    repository.getAll().then((value) => people.addAll(value));
  }

  @observable
  ObservableList<Person> people = ObservableList<Person>();

  @action
  Future<void> add(String name) async {
    var repository = GetIt.I.get<PersonRepository>();
    var person = Person.build(name);
    if (await repository.insert(person)) {
      people.add(person);
    }
  }
}
