/*If we need to use another component from material, please remove
'show IconData, Widget' and import all the material components*/
import 'package:flutter/material.dart' show IconData, Widget;

class MenuOption {
  final String route;
  final String name;
  final IconData icon;
  final Widget screen;

  MenuOption({
    required this.route,
    required this.name,
    required this.icon,
    required this.screen,
  });
}
