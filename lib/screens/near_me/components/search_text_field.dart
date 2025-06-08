import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.grey,
      decoration: InputDecoration(
        disabledBorder: _buildOutLineInputBorder(),
        enabledBorder: _buildOutLineInputBorder(),
        focusedBorder: _buildOutLineInputBorder(),
        fillColor: Colors.black12,
        filled: true,
        prefixIcon: const Icon(CupertinoIcons.search, color: Colors.grey),
        contentPadding: const EdgeInsets.symmetric(vertical: 15),
        hintText: '좌동 주변 가게를 찾아 보세요',
        hintStyle: TextStyle(fontSize: 18),
      ),
    );
  }

  OutlineInputBorder _buildOutLineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(width: .5, color: Colors.black26),
      borderRadius: BorderRadius.circular(8),
    );
  }
}
