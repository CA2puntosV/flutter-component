import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  const ListView2Screen({Key? key}) : super(key: key);

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
        backgroundColor: Colors.indigo,
        centerTitle: true,
        elevation: 0.0,
        title: const Text('ListView Tipo 2'),
      ),
      body: ListView.separated(
        itemCount: options.length,
        separatorBuilder: (_, __) => const Divider(
          color: Colors.indigo,
        ),
        itemBuilder: (ctx, i) => ListTile(
          title: Text(
            options[i],
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.indigo,
          ),
          onTap: () {
            final game = options[i];
            print(game + ' $i');
          },
        ),
      ),
    );
  }
}
