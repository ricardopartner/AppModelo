import 'package:flutter/material.dart';

import 'home.dart';
import 'shared/helpers/app_routes.dart';

class AppRouter {
  static final GlobalKey<NavigatorState> navigatorKey =
      new GlobalKey<NavigatorState>();

  static gotoPush({@required String routerName}) {
    switch (routerName) {
      case routeHome:
        navigatorKey.currentState.pushNamedAndRemoveUntil(
            routerName, (Route<dynamic> route) => false);
        break;
      default:
        navigatorKey.currentState.pushNamed(routerName);
    }
  }

  static gotoPop({@required String routerName}) {
    switch (routerName) {
      case routeHome:
        navigatorKey.currentState.pop();
        break;
      default:
        navigatorKey.currentState.pop(routerName);
    }
  }

  static gotoPopAndPush({@required String routerName}) {
    switch (routerName) {
      // case routeHome:
      //   navigatorKey.currentState.popAndPushNamed(routeHome);
      //   break;
      default:
        navigatorKey.currentState.popAndPushNamed(routerName);
    }
  }

  static gotoParams({@required String routerName, @required parameter}) {
    // if (routerName == collectRoute)
    //   navigatorKey.currentState
    //       .popAndPushNamed(collectRoute, arguments: parameter);
  }

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case routeHome:
        return MaterialPageRoute(
          builder: (_) => Home(),
        );
      default:
        return MaterialPageRoute(builder: (_) => _routeringError(settings));
    }
  }

  static Scaffold _routeringError(RouteSettings settings) {
    return Scaffold(
      body: Center(child: Text('No route defined for ${settings.name}')),
    );
  }
}
