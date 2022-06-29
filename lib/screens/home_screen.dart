import 'package:flutter/material.dart';

import 'package:components/router/screens.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Components'),
          elevation: 0,
        ),
        body: ListView.separated(
          itemCount: AppRoutes.menuOptions.length,
          itemBuilder: (ctx, i) => ListTile(
            title: Text(
              AppRoutes.menuOptions[i].name,
            ),
            leading: Icon(
              AppRoutes.menuOptions[i].icon,
            ),
            onTap: () {
              Navigator.pushNamed(
                context,
                AppRoutes.menuOptions[i].route,
              );

              /* With MaterialPageRoute we can custom the transitions and have complete control over
              final route = MaterialPageRoute(
                builder: (context) => const ListView1Screen(),
              ); */

              /* Navigator.pushReplacement(context, route);  Destroys the previous route.
              It could be used to prevent the user from returning to the login screen when logging in
              */
            },
          ),
          // We can use _ or __ for the properties that we're not using at the moment
          separatorBuilder: (_, __) => const Divider(),
        ),
      ),
    );
  }
}
