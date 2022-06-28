import 'package:flutter/material.dart';

import 'package:components/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: '/',
      routes: {
        '/'         : (_) => const HomeScreen(),
        'listview1' : (_) => const ListView1Screen(),
        'listview2' : (_) => const ListView2Screen(),
        'alert'     : (_) => const AlertScreen(),
        'card'      : (_) => const CardScreen(),
      },
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => const AlertScreen(),
        );
      },
    );
  }
}
