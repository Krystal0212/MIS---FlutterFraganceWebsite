

import 'package:flutter/material.dart';

class CustomAnimatedSwitcher extends StatelessWidget{
  final Widget? widget1, widget2;
  final Duration? duration;
  final bool? condition;
  final Curve? curve;

  const CustomAnimatedSwitcher({
    super.key,
    required this.condition,
    required this.widget1,
    required this.widget2,
    this.duration = const Duration(milliseconds: 500),
    this.curve = Curves.easeInOut
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: duration!,
      switchInCurve: curve!,
      child: condition! ? widget1! : widget2!,
    );
  }
}