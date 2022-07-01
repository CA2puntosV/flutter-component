import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> options = [
      'Megaman',
      'Metal Gear',
      'Super Smash',
      'Final Fantasy'
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Tipo 1'),
      ),
      body: ListView(
        children: <Widget>[
          /*... (spread operator) will spread the list (options) into the separate widgets.
          Spread operator help us when we need to put a list of items into a another list of items.
          Another solution, but a bit ugly is 
          for (String item in options) 
          Text(item)*/
          ...options
              .map(
                (item) => ListTile(
                  trailing: const Icon(Icons.arrow_forward_ios),
                  title: Text(item),
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
