import 'package:flutter/material.dart';
import 'home.dart';
import 'views/product/product_view.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductView(),
    );
  }
}
