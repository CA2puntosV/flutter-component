import 'package:flutter/material.dart';

import 'package:components/models/models.dart';
import 'package:components/screens/screens.dart';

class AppRoutes {
  //static members are methods and properties that can be accessed
  //without instantiating the class. (GLOBAL)

  static const String initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    //TODO delete home
    MenuOption(
      route: 'home',
      name: 'Home Screen',
      screen: const HomeScreen(),
      icon: Icons.home,
    ),
    MenuOption(
      route: 'listview1',
      name: 'Listview 1',
      screen: const ListView1Screen(),
      icon: Icons.checklist,
    ),
    MenuOption(
      route: 'listview2',
      name: 'Listview 2',
      screen: const ListView2Screen(),
      icon: Icons.format_list_numbered_sharp,
    ),
    MenuOption(
      route: 'alert',
      name: 'Alert',
      screen: const AlertScreen(),
      icon: Icons.add_alert,
    ),
    MenuOption(
      route: 'card',
      name: 'Card',
      screen: const CardScreen(),
      icon: Icons.wallet_giftcard,
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getMenuRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final MenuOption option in menuOptions) {
      appRoutes.addAll(
        {option.route: (_) => option.screen},
      );
    }

    return appRoutes;
  }

/*  This is helpful when we are using our routes without icons,
    names or more properties
  static Map<String, Widget Function(BuildContext)> routes = {
    'home'     : (BuildContext context) => const HomeScreen(),
    'listview1': (BuildContext context) => const ListView1Screen(),
    'listview2': (BuildContext context) => const ListView2Screen(),
    'alert'    : (BuildContext context) => const AlertScreen(),
    'card'     : (BuildContext context) => const CardScreen(),
  }; */

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}
