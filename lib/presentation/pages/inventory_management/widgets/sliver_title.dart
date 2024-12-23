import 'package:eaudelux/utils/styles/themes.dart';
import 'package:flutter/material.dart';

class CustomSliverTitle extends StatelessWidget {
  final String title;
  final String? dangerFollowingTitle;
  final Alignment? alignment;

  const CustomSliverTitle({
    super.key,
    required this.title,
    this.dangerFollowingTitle,
    this.alignment
  });

  @override
  Widget build(BuildContext context) {
    final alertText = dangerFollowingTitle??'';
    return SliverToBoxAdapter(
      child: Align(
        alignment: alignment??Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                title,
                style: AppTheme.sliverDefaultStyle
            ),
            Text(
                alertText,
                style: AppTheme.dangerTextStyle
            ),
          ],
        ),
      ),
    );
  }
}