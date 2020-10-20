// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_field_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TextFieldController on _TextFieldControllerBase, Store {
  final _$obscureAtom = Atom(name: '_TextFieldControllerBase.obscure');

  @override
  bool get obscure {
    _$obscureAtom.reportRead();
    return super.obscure;
  }

  @override
  set obscure(bool value) {
    _$obscureAtom.reportWrite(value, super.obscure, () {
      super.obscure = value;
    });
  }

  final _$textAtom = Atom(name: '_TextFieldControllerBase.text');

  @override
  String get text {
    _$textAtom.reportRead();
    return super.text;
  }

  @override
  set text(String value) {
    _$textAtom.reportWrite(value, super.text, () {
      super.text = value;
    });
  }

  final _$_TextFieldControllerBaseActionController =
      ActionController(name: '_TextFieldControllerBase');

  @override
  void changeObscure() {
    final _$actionInfo = _$_TextFieldControllerBaseActionController.startAction(
        name: '_TextFieldControllerBase.changeObscure');
    try {
      return super.changeObscure();
    } finally {
      _$_TextFieldControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setText(dynamic value) {
    final _$actionInfo = _$_TextFieldControllerBaseActionController.startAction(
        name: '_TextFieldControllerBase.setText');
    try {
      return super.setText(value);
    } finally {
      _$_TextFieldControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
obscure: ${obscure},
text: ${text}
    ''';
  }
}
