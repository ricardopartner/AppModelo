import 'package:app/components/text_field/text_field.dart' as pm;
import 'package:app/stores/product_store.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BrandField extends StatelessWidget {
  final ProductStore store;

  const BrandField({Key key, this.store}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return pm.TextField(
      change: store.setBrand,
      hintText: 'Marca do Produto',
      maxLength: 30,
      initialValue: store.brand,
      keyboardType: TextInputType.text,
      textStyle: TextStyle(
        color: Colors.blue,
        fontSize: 16,
        fontWeight: FontWeight.normal,
      ),
      // icon: Icons.person,
    );
  }
}
