import 'package:flutter/material.dart';

PreferredSize appBarBottomLine() {
  return PreferredSize(
    preferredSize: Size(double.infinity, .5),
    child: Divider(
      thickness: .5,
      color: Colors.grey,
    ),
  );
}
