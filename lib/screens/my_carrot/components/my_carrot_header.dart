import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCarrotHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: .5,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: Column(
          spacing: 30,
          children: [
            _buildProfileRow(),
            _buildProfileButton(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildRoundTextButton(title: "판매내역", iconData: CupertinoIcons.square_list_fill),
                _buildRoundTextButton(title: "구매내역", iconData: CupertinoIcons.bag_fill),
                _buildRoundTextButton(title: "관심목록", iconData: CupertinoIcons.heart),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container _buildRowIconItem() {
    return Container(
      height: 50,
      child: Row(
        spacing: 20,
        children: [
          Icon(Icons.place, size: 17),
          Text("내 동네 설정"),
        ],
      ),
    );
  }

  Container _buildProfileButton() {
    return Container(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text("프로필 보기"),
        ),
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
    );
  }

  Row _buildProfileRow() {
    return Row(
      children: [
        Stack(
          children: [
            Container(
              width: 65,
              height: 65,
              child: CircleAvatar(
                backgroundImage: NetworkImage("https://picsum.photos/id/237/200/300"),
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.white),
                child: Icon(Icons.camera_enhance, size: 15),
              ),
            ),
          ],
        ),
        SizedBox(width: 16),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("developer", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              SizedBox(height: 10),
              Text("좌동 #00912", style: TextStyle(color: Colors.grey, fontSize: 12)),
            ],
          ),
        ),
      ],
    );
  }

  InkWell _buildRoundTextButton({required String title, required IconData iconData}) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(999),
              border: Border.all(color: Colors.grey, width: .5),
            ),
            child: Icon(iconData, color: Colors.orange, size: 20),
          ),
          SizedBox(height: 10),
          Text(title),
        ],
      ),
    );
  }
}
