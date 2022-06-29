import 'package:flutter/material.dart';

import 'package:components/router/screens.dart';

class AppRoutes {
  //static members are methods and properties that can be accessed
  //without instantiating the class. (GLOBAL)

  static const String initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> routes = {
    'home'     : (BuildContext context) => const HomeScreen(),
    'listview1': (BuildContext context) => const ListView1Screen(),
    'listview2': (BuildContext context) => const ListView2Screen(),
    'alert'    : (BuildContext context) => const AlertScreen(),
    'card'     : (BuildContext context) => const CardScreen(),
  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
