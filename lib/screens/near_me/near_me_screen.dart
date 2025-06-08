import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carrot_market/models/recommend_store.dart';
import 'package:flutter_carrot_market/screens/_components/appbar_preferred_size.dart';
import 'package:flutter_carrot_market/screens/near_me/components/bottom_title_icon.dart';
import 'package:flutter_carrot_market/screens/near_me/components/round_border_text.dart';
import 'package:flutter_carrot_market/screens/near_me/components/search_text_field.dart';
import 'package:flutter_carrot_market/screens/near_me/components/store_item.dart';
import 'package:flutter_carrot_market/theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NearMeScreen extends StatelessWidget {
  const NearMeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: ListView(
        children: [
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SearchTextField(),
          ),
          _buildHorizonScroll(),
          Divider(thickness: 10, color: Colors.grey),
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 30),
            child: Wrap(
              alignment: WrapAlignment.start,
              spacing: 22.0,
              runSpacing: 30,
              children: [
                const BottomTitleIcon(title: '구인구직', iconData: FontAwesomeIcons.user),
                const BottomTitleIcon(title: '과외/클래스', iconData: FontAwesomeIcons.edit),
                const BottomTitleIcon(title: '농수산물', iconData: FontAwesomeIcons.appleAlt),
                const BottomTitleIcon(title: '부동산', iconData: FontAwesomeIcons.hotel),
                const BottomTitleIcon(title: '중고차', iconData: FontAwesomeIcons.car),
                const BottomTitleIcon(title: '전시/행사', iconData: FontAwesomeIcons.chessBishop),
              ],
            ),
          ),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text('이웃들의 추천 가게', style: textTheme().displayMedium),
          ),
          SizedBox(height: 20),
          Container(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: StoreItem(
                    recommendStore: recommendStoreList[index],
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }

  SizedBox _buildHorizonScroll() {
    return SizedBox(
      height: 66,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (context, index) {
          return Center(
            child: RoundBorderText(title: 'title', position: index),
          );
        },
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: Text('내 근처'),
      actions: [
        IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.pencil)),
        IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.bell)),
      ],
      bottom: appBarBottomLine(),
    );
  }
}
