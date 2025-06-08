import 'package:flutter/material.dart';

class RoundBorderText extends StatelessWidget {
  final String title;
  final int position;

  const RoundBorderText({
    required this.title,
    required this.position,
  });

  @override
  Widget build(BuildContext context) {
    var paddingValue = position == 0 ? 16.0 : 8.0;
    return Padding(
      padding: EdgeInsets.only(left: paddingValue),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          border: Border.all(width: .5, color: Colors.grey),
        ),
        child: Text(
          '학원',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
