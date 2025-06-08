import 'package:flutter/material.dart';
import 'package:flutter_carrot_market/screens/_components/image_container.dart';
import 'package:flutter_carrot_market/theme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LifeBody extends StatelessWidget {
  const LifeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: .5, color: Colors.black26)),
      ),
      child: Column(
        children: [
          _buildTop(),
          _buildWriter(),
          _buildWriting(),
          _buildImage(),
          Divider(),
          _buildTail(),
        ],
      ),
    );
  }

  Widget _buildTop() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text("우리동네질문", style: textTheme().bodyMedium),
          ),
          Text("3시간전", style: textTheme().bodyMedium),
        ],
      ),
    );
  }

  Widget _buildWriter() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          ImageContainer(
            width: 30,
            height: 30,
            borderRadius: 999,
            imageUrl: 'https://picsum.photos/id/780/200/100',
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(text: ' 헬로비비'),
                TextSpan(text: ' 좌동'),
                TextSpan(text: ' 인증 3회'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWriting() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          '예민한 개도 미용할 수 있는 곳이나 동물 병원 어디 있을까요? 내일 유기견을 데려오기로 했는데 아직 성향을 잘 몰라서 걱정이 돼요ㅜㅜ',
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }

  Widget _buildImage() {
    return Visibility(
      visible: true,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
        child: Image.network(
          'https://picsum.photos/id/780/200/100',
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildTail() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Icon(FontAwesomeIcons.smile),
          SizedBox(width: 8),
          Text('공감하기'),
          SizedBox(width: 22),
          Icon(FontAwesomeIcons.commentAlt),
          SizedBox(width: 8),
          Text('댓글쓰기 11'),
        ],
      ),
    );
  }
}
