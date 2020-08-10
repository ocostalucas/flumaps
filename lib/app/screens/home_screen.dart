import 'package:flutter/material.dart';
import 'package:flutter_maps/app/widgets/map_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      MapWidget(),
      Container(
        alignment: Alignment.bottomCenter,
        padding: EdgeInsets.fromLTRB(0, 0, 0, 32),
        child: Text("By Luk4z S2"),
      )
    ]));
  }
}
