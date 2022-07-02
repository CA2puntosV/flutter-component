import 'package:flutter/material.dart';

class CustomCardTwo extends StatelessWidget {
  const CustomCardTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      child: Column(
        children: const [
          FadeInImage(
            placeholder: AssetImage(
              'assets/jar-loading.gif',
            ),
            image: NetworkImage(
              'https://cdn.pixabay.com/photo/2019/12/11/21/18/landscape-4689328_960_720.jpg',
            ),
          ),
        ],
      ),
    );
  }
}
