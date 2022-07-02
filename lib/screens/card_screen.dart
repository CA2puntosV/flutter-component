import 'package:flutter/material.dart';

import 'package:components/widgets/widgets_export.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
        ),
        children: const [
          CustomCardOne(),
          SizedBox(height: 10),
          CustomCardTwo(),
        ],
      ),
    );
  }
}
