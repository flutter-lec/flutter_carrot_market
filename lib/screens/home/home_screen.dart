import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carrot_market/models/product.dart';
import 'package:flutter_carrot_market/screens/home/components/list_item.dart';
import 'package:flutter_carrot_market/screens/home/detail/home_detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen();

  @override
  Widget build(BuildContext context) {
    print("HomeScreen build!");
    return Scaffold(
      appBar: _appBar(),
      body: ListView.separated(
        itemBuilder: (context, index) {
          Product p = productList[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeDetailScreen()));
              },
              child: ListItem(p: p),
            ),
          );
        },
        separatorBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Divider(thickness: .5, color: Colors.grey),
        ),
        itemCount: productList.length,
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: Row(
        children: [
          Text("좌동"),
          SizedBox(width: 4),
          Icon(CupertinoIcons.chevron_down),
        ],
      ),
      actions: [
        IconButton(icon: const Icon(CupertinoIcons.search), onPressed: () {}),
        IconButton(icon: const Icon(CupertinoIcons.list_dash), onPressed: () {}),
        IconButton(icon: const Icon(CupertinoIcons.bell), onPressed: () {}),
      ],
      bottom: PreferredSize(
        preferredSize: Size(double.infinity, .5),
        child: Divider(thickness: .5, color: Colors.grey),
      ),
    );
  }
}
