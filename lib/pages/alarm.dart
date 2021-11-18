import 'package:flutter/material.dart';

class Alarm extends StatelessWidget {
  const Alarm({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const <Widget>[
        Icon(
          Icons.access_alarm,
          size: 170.0,
          color: Colors.blue,
        ),
        Text("Tab 3"),
      ],
    );
  }
}
