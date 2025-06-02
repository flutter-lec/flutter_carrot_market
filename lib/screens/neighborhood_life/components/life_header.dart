import 'package:flutter/material.dart';
import 'package:flutter_carrot_market/screens/_components/image_container.dart';

class LifeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: .5,
      margin: EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          spacing: 16,
          children: [
            ImageContainer(
              borderRadius: 6,
              imageUrl: "https://picsum.photos/id/780/200/100",
              width: 45,
              height: 45,
            ),
            Expanded(
              child: Text(
                "이웃과 함께 만드는 봄 간식 지도 마음까지 따뜻해지는 봄 간식을 만나보아요",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
