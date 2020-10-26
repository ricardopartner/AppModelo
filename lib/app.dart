import 'package:flutter/material.dart';
import 'routing_generator.dart';
import 'shared/helpers/app_routes.dart';
import 'views/product/product_view.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: AppRouter.navigatorKey,
      initialRoute: routeHome,
      onGenerateRoute: AppRouter.generateRoute,
      home: ProductView(),
    );
  }
}
