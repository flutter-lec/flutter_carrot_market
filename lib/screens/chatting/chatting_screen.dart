import 'package:flutter/material.dart';

class ChattingScreen extends StatelessWidget {
  const ChattingScreen();

  @override
  Widget build(BuildContext context) {
    print("ChattingScreen build!");
    return Scaffold(
      appBar: _appBar(),
      body: ListView(
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.grey, width: .5)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                spacing: 16,
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: CircleAvatar(backgroundImage: NetworkImage("https://picsum.photos/id/237/200/300")),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(text: "당근이 "),
                              TextSpan(
                                text: "대부동 ",
                                style: TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                              TextSpan(
                                text: "• ",
                                style: TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                              TextSpan(
                                text: "1일전",
                                style: TextStyle(color: Colors.grey, fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          "developer님 근처에 다양한 물품들이 아주 많이 있습니다asdfffffffffffffffffffff",
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  AppBar _appBar() => AppBar(
    title: Text("채팅"),
    bottom: PreferredSize(
      preferredSize: Size(double.infinity, .5),
      child: Divider(
        thickness: .5,
        color: Colors.grey,
      ),
    ),
  );
}
