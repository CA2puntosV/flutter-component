import 'package:flutter/material.dart';

import 'package:components/themes/app_theme.dart';

class CustomCardOne extends StatelessWidget {
  const CustomCardOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.photo_album_outlined,
              color: AppTheme.primary,
            ),
            title: Text('Card Title'),
            subtitle: Text(
              'Officia et sint irure et esse nisi excepteur aliquip sunt. Aliqua proident nulla fugiat labore nisi nostrud irure laborum ea eiusmod qui.',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  child: const Text('Cancel'),
                  style: AppTheme.textButtonTheme,
                  onPressed: () {},
                ),
                TextButton(
                  child: const Text('Ok'),
                  style: AppTheme.textButtonTheme,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
