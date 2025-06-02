import 'package:flutter/material.dart';
import 'package:flutter_carrot_market/models/icon_menu.dart';
import 'package:flutter_carrot_market/screens/_components/appbar_preferred_size.dart';
import 'package:flutter_carrot_market/screens/my_carrot/components/card_icon_menu.dart';
import 'package:flutter_carrot_market/screens/my_carrot/components/my_carrot_header.dart';

class MyCarrotScreen extends StatelessWidget {
  const MyCarrotScreen();

  @override
  Widget build(BuildContext context) {
    print("MyCarrotScreen build!");
    return Scaffold(
      appBar: _appBar(),
      body: ListView(
        children: [
          MyCarrotHeader(),
          SizedBox(height: 8),
          CardIconMenu(iconMenuList: iconMenu1),
          SizedBox(height: 8),
          CardIconMenu(iconMenuList: iconMenu2),
          SizedBox(height: 8),
          CardIconMenu(iconMenuList: iconMenu3),
        ],
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: Text("나의 당근"),
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
      bottom: appBarBottomLine(),
    );
  }
}
