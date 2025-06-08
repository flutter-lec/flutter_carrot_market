import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carrot_market/screens/_components/appbar_preferred_size.dart';
import 'package:flutter_carrot_market/screens/neighborhood_life/components/life_body.dart';
import 'package:flutter_carrot_market/screens/neighborhood_life/components/life_header.dart';

class NeighborhoodLifeScreen extends StatelessWidget {
  const NeighborhoodLifeScreen();

  @override
  Widget build(BuildContext context) {
    print("NeighborhoodLifeScreen build!");
    return Scaffold(
      appBar: _appBar(),
      body: ListView(
        children: [
          LifeHeader(),
          ...List.generate(
            10,
            (index) => Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: LifeBody(),
            ),
          ),
        ],
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: Text("동네생활"),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.search)),
        IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.plus_rectangle_on_rectangle)),
        IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.bell)),
      ],
      bottom: appBarBottomLine(),
    );
  }
}
