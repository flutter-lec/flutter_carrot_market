import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carrot_market/screens/chatting/chatting_screen.dart';
import 'package:flutter_carrot_market/screens/home/home_screen.dart';
import 'package:flutter_carrot_market/screens/my_carrot/my_carrot_screen.dart';
import 'package:flutter_carrot_market/screens/near_me/near_me_screen.dart';
import 'package:flutter_carrot_market/screens/neighborhood_life/neighborhood_life_screen.dart';

class MainScreens extends StatefulWidget {
  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  int selectedIndex = 3;
  List<int> loadPages = [3]; // 배열의 크기 1

  void selectedBottomMenu(int index) {
    if (!loadPages.contains(index)) {
      loadPages.add(index); // [0, 1]
    }

    selectedIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: [
          loadPages.contains(0) ? const HomeScreen() : Container(),
          loadPages.contains(1) ? const NeighborhoodLifeScreen() : Container(),
          loadPages.contains(2) ? const NearMeScreen() : Container(),
          loadPages.contains(3) ? const ChattingScreen() : Container(),
          loadPages.contains(4) ? const MyCarrotScreen() : Container(),
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  BottomNavigationBar _bottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      // showUnselectedLabels: false, -> 레이블 글자 가리기
      // showSelectedLabels: false,
      selectedItemColor: Colors.orange,
      unselectedItemColor: Colors.black54,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      currentIndex: selectedIndex,
      onTap: selectedBottomMenu,
      items: [
        BottomNavigationBarItem(label: "홈", icon: Icon(CupertinoIcons.home)),
        BottomNavigationBarItem(label: "동네생활", icon: Icon(CupertinoIcons.square_on_square)),
        BottomNavigationBarItem(label: "내 근처", icon: Icon(CupertinoIcons.placemark)),
        BottomNavigationBarItem(label: "채팅", icon: Icon(CupertinoIcons.chat_bubble_2)),
        BottomNavigationBarItem(label: "나의 당근", icon: Icon(CupertinoIcons.person)),
      ],
    );
  }
}
