import 'package:flutter/material.dart';

class TitleWithTextBox extends StatelessWidget {
  final String title;
  final TextEditingController controller;

  const TitleWithTextBox({
    super.key,
    required this.title,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Text(
              title,
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  gapPadding: 2
                ),
                contentPadding: EdgeInsets.symmetric(
                  vertical: 3.0,
                  horizontal: 3.0,
                ),
                hintText: 'Enter here',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
