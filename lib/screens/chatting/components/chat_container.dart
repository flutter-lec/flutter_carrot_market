import 'package:flutter/material.dart';
import 'package:flutter_carrot_market/models/chat_message.dart';
import 'package:flutter_carrot_market/screens/_components/image_container.dart';

class ChatContainer extends StatelessWidget {
  final ChatMessage chatMessage;

  ChatContainer({required this.chatMessage});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey, width: .5)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          spacing: 16,
          children: [
            ImageContainer(
              borderRadius: 999,
              height: 50,
              width: 50,
              imageUrl: chatMessage.profileImage,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text: "${chatMessage.sender} "),
                        TextSpan(
                          text: "${chatMessage.location} ",
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                        TextSpan(
                          text: "• ",
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                        TextSpan(
                          text: "${chatMessage.sendDate}",
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "${chatMessage.message}",
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Visibility(
              visible: chatMessage.imageUri != null,
              child: ImageContainer(
                borderRadius: 8,
                height: 50,
                width: 50,
                imageUrl: chatMessage.imageUri ?? "",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
