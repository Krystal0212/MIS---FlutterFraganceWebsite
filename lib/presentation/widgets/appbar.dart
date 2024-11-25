import 'package:eaudelux/utils/styles/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget {
  final Size appBarSize;

  const CustomAppBar({super.key, required this.appBarSize});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        EventCountdownSection(
          height: appBarSize.height * 0.17,
          width: appBarSize.width,
        ),
        ActionsSection(
          height: appBarSize.height * 0.4,
          width: appBarSize.width,
        ),
        // constNavigatorsSection(),
        // SalesSection(),
      ],
    );
  }
}

const double iconSize = 30;

class EventCountdownSection extends StatelessWidget {
  final double height, width;
  final double iconWidth = iconSize;
  final double iconHeight = iconSize;
  final String fireIconPath = 'assets/icons/pngs/fire.png';

  const EventCountdownSection(
      {super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    final Image fireIcon =
        Image.asset(fireIconPath, width: iconWidth, height: iconHeight);

    return Container(
      color: AppTheme.primary,
      width: width,
      height: height,
        child: Row(mainAxisAlignment: MainAxisAlignment.center,children: <Widget>[
          fireIcon,
          Text('Only 11 days left until Christmas',
              style: AppTheme.whiteMediumStyle),
          fireIcon
        ]),
    );
  }
}

class ActionsSection extends StatelessWidget {
  final double height, width;
  final double logoWidth = 100;
  final double logoHeight = 70;
  final String logoImagePath = 'assets/images/logo.svg';
  final String logoSemanticsLabel = 'EauDeLux Logo';

  ActionsSection({super.key, required this.height, required this.width});

  final TextField searchTextField = TextField(
    style: AppTheme.appHintStyle.copyWith(color: AppTheme.black),
    decoration: AppTheme.searchInputDecoration,
  );

  @override
  Widget build(BuildContext context) {
    SvgPicture logoPicture = SvgPicture.asset(
      logoImagePath,
      semanticsLabel: logoSemanticsLabel,
      height: logoHeight,
      width: logoWidth,
    );

    return Container(
      color: AppTheme.white,
      width: width,
      height: height,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            logoPicture,
            SizedBox(width: width * 0.3, child: searchTextField)
          ]),
    );
  }
}
