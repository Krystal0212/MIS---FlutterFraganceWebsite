import 'package:eaudelux/utils/styles/themes.dart';
import 'package:flutter/material.dart';

class CustomSliverTitle extends StatelessWidget {
  final String title;

  const CustomSliverTitle({
    super.key,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Align(
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(
            color: AppTheme.black,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
