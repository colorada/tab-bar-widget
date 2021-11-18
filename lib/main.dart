import 'package:flutter/material.dart';
import 'package:tab_bar/pages/home.dart';
import 'package:tab_bar/pages/infinite.dart';
import 'package:tab_bar/pages/alarm.dart';

void main() {
  runApp(const MaterialApp(
    home: MyTabs(),
  ));
}

class MyTabs extends StatefulWidget {
  const MyTabs({Key? key}) : super(key: key);
  @override
  _MyTabsState createState() => _MyTabsState();
}

class _MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin{
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Video Tabs"),
        backgroundColor: Colors.redAccent,
        bottom: TabBar(tabs: <Widget>[
          Tab(
            icon: Icon(Icons.home),
          ),
          Tab(
            icon: Icon(Icons.all_inclusive),
          ),
          Tab(
            icon: Icon(Icons.access_alarm),
          ),
        ],
        controller: controller,
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          Home(),
          Infinite(),
          Alarm(),
        ],
        controller: controller,
      ),
    );
  }
}
