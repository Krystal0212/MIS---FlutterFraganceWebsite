import 'package:eaudelux/utils/styles/themes.dart';
import 'package:flutter/material.dart';

class TextNavigatorButton extends StatelessWidget {
  final Function()? onPressedFunction;
  final String title;
  final ButtonStyle buttonStyle;

  const TextNavigatorButton(
      {super.key, required this.onPressedFunction, required this.title, required this.buttonStyle});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressedFunction ?? () {},
        style: buttonStyle,
        child: Text(
          title,
          style: (title != 'Login') ? AppTheme.blackMediumStyle : AppTheme.blackMediumStyle.copyWith(fontSize: 20),
        ));
  }
}
