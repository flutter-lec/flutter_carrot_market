import 'package:flutter/material.dart';
import 'package:flutter_carrot_market/models/chat_message.dart';
import 'package:flutter_carrot_market/screens/_components/appbar_preferred_size.dart';
import 'package:flutter_carrot_market/screens/chatting/components/chat_container.dart';

class ChattingScreen extends StatelessWidget {
  const ChattingScreen();

  @override
  Widget build(BuildContext context) {
    print("ChattingScreen build!");
    return Scaffold(
      appBar: _appBar(),
      body: ListView(
        children: List.generate(
          chatMessageList.length,
          (index) => ChatContainer(chatMessage: chatMessageList[index]),
        ),
      ),
    );
  }

  AppBar _appBar() => AppBar(
    title: Text("채팅"),
    bottom: appBarBottomLine(),
  );
}
