import 'package:flutter/rendering.dart';

import '../widgets/widgets.dart';

import '../../utils/styles/themes.dart';
import 'package:flutter/material.dart';

class CustomSliverTextButton extends StatelessWidget {
  final Function() onPressed;
  final String text;
  final double? maxWidth;

  const CustomSliverTextButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.maxWidth
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(vertical: 25),
        constraints: BoxConstraints(maxWidth: maxWidth??double.infinity),
        child: TextButton(
            onPressed: onPressed,
            style: AppTheme.sliverTextButtonStyle,
            child: Text(
              text,
              style: AppTheme.sliverButtonDefaultStyle,
            ),
        ),
      ),
    );
  }
}

