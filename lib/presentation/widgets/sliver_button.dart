import 'package:flutter/rendering.dart';

import '../widgets/widgets.dart';

import '../../utils/styles/themes.dart';
import 'package:flutter/material.dart';

class CustomSliverTextButton extends StatelessWidget {
  final Function() onPressed;
  final String text;
  final double? maxWidth;
  final Color? primaryColor, secondaryColor;

  const CustomSliverTextButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.maxWidth,
    this.primaryColor,
    this.secondaryColor
  });

  @override
  Widget build(BuildContext context) {

    ///////////////////////////////////////////////////////////////
    final textStyle = TextStyle(
        fontSize: 35,
        fontWeight: FontWeight.bold,
        color: secondaryColor??AppTheme.black
    );
    ///////////////////////////////////////////////////////////////
    final buttonStyle = TextButton.styleFrom(
        backgroundColor: primaryColor??AppTheme.white,
        shape: RoundedRectangleBorder(
            side: BorderSide(
                color: secondaryColor??AppTheme.black,
                width: 1
            ),
            borderRadius: BorderRadius.circular(10)
        )
    );
    ////////////////////////////////////////////////////////////
    return SliverToBoxAdapter(
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(vertical: 25),
        constraints: BoxConstraints(maxWidth: maxWidth??double.infinity),
        child: TextButton(
            onPressed: onPressed,
            style: buttonStyle,
            child: Text(
              text,
              style: textStyle,
            ),
        ),
      ),
    );
  }
}

