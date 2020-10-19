// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'person_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PersonStore on _PersonStoreBase, Store {
  final _$peopleAtom = Atom(name: '_PersonStoreBase.people');

  @override
  ObservableList<Person> get people {
    _$peopleAtom.reportRead();
    return super.people;
  }

  @override
  set people(ObservableList<Person> value) {
    _$peopleAtom.reportWrite(value, super.people, () {
      super.people = value;
    });
  }

  final _$addAsyncAction = AsyncAction('_PersonStoreBase.add');

  @override
  Future<void> add(String name) {
    return _$addAsyncAction.run(() => super.add(name));
  }

  final _$_PersonStoreBaseActionController =
      ActionController(name: '_PersonStoreBase');

  @override
  void init() {
    final _$actionInfo = _$_PersonStoreBaseActionController.startAction(
        name: '_PersonStoreBase.init');
    try {
      return super.init();
    } finally {
      _$_PersonStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
people: ${people}
    ''';
  }
}
