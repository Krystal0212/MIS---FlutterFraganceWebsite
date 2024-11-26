import 'package:flutter/material.dart';

import '../../utils/styles/themes.dart';

class CustomFloatingSliverTitle extends StatelessWidget {
  final String title;
  final double floatingLevel;

  const CustomFloatingSliverTitle({
    super.key,
    required this.title,
    required this.floatingLevel
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      floating: false,
      toolbarHeight: 60,
      backgroundColor: Colors.white,
      elevation: floatingLevel,
      flexibleSpace: Center(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: AppTheme.black,
          ),
        ),
      ),
    );
  }
}

