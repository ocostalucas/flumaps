import 'package:flutter/material.dart';
import 'package:flutter_maps/app/widgets/map_widget.dart';
import 'package:flutter_maps/app/widgets/search_widget.dart';

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
      SearchWidget(),
    ]));
  }
}
