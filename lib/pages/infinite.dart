import 'package:flutter/material.dart';

class Infinite extends StatelessWidget {
  const Infinite({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        Icon(
          Icons.all_inclusive,
          size: 170.0,
          color: Colors.blue,
        ),
        Text("Tab 2"),
      ],
    );
  }
}