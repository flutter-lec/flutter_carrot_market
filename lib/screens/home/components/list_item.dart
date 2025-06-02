import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carrot_market/_core/my_util.dart';
import 'package:flutter_carrot_market/models/product.dart';

class ListItem extends StatelessWidget {
  const ListItem({required this.p});

  final Product p;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        height: 115,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                "https://picsum.photos/id/237/200/300",
                width: 115,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 4,
                children: [
                  Text("${p.title}", style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("${p.address} • ${p.publishedAt}", style: TextStyle(color: Colors.grey, fontSize: 12)),
                  Text("${p.price.toMoney()}원", style: TextStyle(fontWeight: FontWeight.bold)),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    spacing: 3,
                    children: [
                      Icon(CupertinoIcons.chat_bubble_2, color: Colors.grey, size: 16),
                      Text("${p.commentsCount}", style: TextStyle(color: Colors.grey)),
                      SizedBox(width: 3),
                      InkWell(
                        onTap: () {},
                        child: Icon(CupertinoIcons.heart, color: Colors.grey, size: 16),
                      ),
                      Text("${p.heartCount}", style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
