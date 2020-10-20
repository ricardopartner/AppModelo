import 'package:app/components/text_field/text_field.dart' as pm;
import 'package:app/stores/product_store.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NameField extends StatelessWidget {
  final ProductStore store;

  const NameField({Key key, this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return pm.TextField(
      change: store.setName,
      hintText: 'Nome do produto ok',
      maxLength: 30,
      initialValue: store.name,
      keyboardType: TextInputType.text,
      textStyle: TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
      textCapitalization: TextCapitalization.characters,
    );
  }
}
