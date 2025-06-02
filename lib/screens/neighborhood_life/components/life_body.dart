import 'package:flutter/material.dart';

class LifeBody extends StatelessWidget {
  const LifeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTop(),
        _buildWriter(),
        _buildWriting(),
        _buildImage(),
        Divider(),
        _buildTail(),
      ],
    );
  }

  Row _buildTop() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(4),
          child: Container(
            decoration: BoxDecoration(color: Colors.black12, borderRadius: BorderRadius.circular(4)),
            child: Text("우리동네질문"),
          ),
        ),
        Text("3시간전"),
      ],
    );
  }

  Row _buildWriter() {
    return Row(
      children: [],
    );
  }

  Row _buildWriting() {
    return Row();
  }

  Row _buildImage() {
    return Row();
  }

  Row _buildTail() {
    return Row();
  }
}
