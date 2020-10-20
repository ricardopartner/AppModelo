// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProductStore on _ProductStoreBase, Store {
  final _$nameAtom = Atom(name: '_ProductStoreBase.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$brandAtom = Atom(name: '_ProductStoreBase.brand');

  @override
  String get brand {
    _$brandAtom.reportRead();
    return super.brand;
  }

  @override
  set brand(String value) {
    _$brandAtom.reportWrite(value, super.brand, () {
      super.brand = value;
    });
  }

  final _$_ProductStoreBaseActionController =
      ActionController(name: '_ProductStoreBase');

  @override
  void setName(String value) {
    final _$actionInfo = _$_ProductStoreBaseActionController.startAction(
        name: '_ProductStoreBase.setName');
    try {
      return super.setName(value);
    } finally {
      _$_ProductStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setBrand(String value) {
    final _$actionInfo = _$_ProductStoreBaseActionController.startAction(
        name: '_ProductStoreBase.setBrand');
    try {
      return super.setBrand(value);
    } finally {
      _$_ProductStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
brand: ${brand}
    ''';
  }
}
