import 'package:flutter/material.dart';
import 'package:flutter_carrot_market/models/icon_menu.dart';

class CardIconMenu extends StatelessWidget {
  final List<IconMenu> iconMenuList;

  CardIconMenu({required this.iconMenuList});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: .5,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: List.generate(
            iconMenuList.length,
            (index) => _buildRowIconItem(title: iconMenuList[index].title, iconData: iconMenuList[index].iconData),
          ),
        ),
      ),
    );
  }

  Container _buildRowIconItem({required String title, required IconData iconData}) {
    return Container(
      height: 50,
      child: Row(
        spacing: 20,
        children: [
          Icon(iconData, size: 17),
          Text(title),
        ],
      ),
    );
  }
}
