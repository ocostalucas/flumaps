import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 8.0, right: 8.0),
            child: Container(
                height: 50.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.5, 0.5),
                        blurRadius: 8,
                        spreadRadius: 2),
                  ],
                ),
                child: TextField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      hintText: 'Pesquise aqui',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 15.0, top: 15.0),
                      prefixIcon: IconButton(
                        icon: Icon(
                          Icons.dehaze,
                          color: Colors.black,
                        ),
                        onPressed: () {},
                        iconSize: 25.0,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          Icons.directions,
                          color: Colors.black,
                        ),
                        onPressed: () {},
                        iconSize: 25.0,
                      )),
                ))),
      ],
    );
  }
}
