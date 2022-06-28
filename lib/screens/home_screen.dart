import 'package:flutter/material.dart';

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
          itemCount: 5,
          itemBuilder: (ctx, i) => ListTile(
            title: const Text('Route Name'),
            leading: const Icon(Icons.alarm_add),
            onTap: () {
              Navigator.pushNamed(context, 'card');

              /* With MaterialPageRoute we can custom the transitions and have complete control over
              final route = MaterialPageRoute(
                builder: (context) => const ListView1Screen(),
              ); */

              /* Navigator.pushReplacement(context, route);  Destroys the previous route.
              It could be used to prevent the user from returning to the login screen when logging in
              */
            },
          ),
          separatorBuilder: (_, __) => const Divider(),
        ),
      ),
    );
  }
}
