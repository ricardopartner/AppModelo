import 'package:app/stores/product_store.dart';
import 'package:app/views/product/components/brand_field.dart';
import 'package:app/views/product/components/name_field.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

class ProductView extends StatelessWidget {
  final store = GetIt.I.get<ProductStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get It"),
      ),
      body: Container(
        color: Colors.red,
        child: ListView(
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: NameField(store: store),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: BrandField(store: store),
            ),
          ],
        ),
      ),
    );
  }
}
