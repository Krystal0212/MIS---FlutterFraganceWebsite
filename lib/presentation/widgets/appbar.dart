import 'package:eaudelux/presentation/widgets/text_navigator_button.dart';
import 'package:eaudelux/utils/styles/colours.dart';
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
          height: appBarSize.height * 0.2,
          width: appBarSize.width,
        ),
        ActionsSection(
          height: appBarSize.height * 0.35,
          width: appBarSize.width,
        ),
        NavigatorsSection(
            height: appBarSize.height * 0.25,
            width: appBarSize.width
        ),
        SalesSection(
            height: appBarSize.height * 0.2,
            width: appBarSize.width
        ),
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
      child:
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
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
  final String logoImagePath = 'images/svgs/logo.svg';
  final String logoSemanticsLabel = 'EauDeLux Logo';

  ActionsSection({super.key, required this.height, required this.width});

  final TextField searchTextField = TextField(
    style: AppTheme.appHintStyle.copyWith(color: AppTheme.black),
    decoration: AppTheme.searchInputDecoration,
  );

  @override
  Widget build(BuildContext context) {
    SizedBox logoPictureBox = SizedBox(
        width: width * 0.25,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              logoImagePath,
              semanticsLabel: logoSemanticsLabel,
              width: width * 0.15,
            ),
          ],
        ));

    final Container navigatorBox = Container(
      color: AppTheme.white,
      width: width * 0.25,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.account_circle),
            label: Text('My Account', style: AppTheme.blackMediumStyle),
            style: AppTheme.navigationUserSectionButtonStyle,
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.favorite),
            label: Text('Wishlist', style: AppTheme.blackMediumStyle),
            style: AppTheme.navigationUserSectionButtonStyle,
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.shopping_bag),
            label: Text('0 Items', style: AppTheme.blackMediumStyle),
            style: AppTheme.navigationUserSectionButtonStyle,
          ),
        ],
      ),
    );

    return Container(
      color: AppTheme.white,
      width: width * 0.9,
      height: height,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            logoPictureBox,
            SizedBox(width: width * 0.3, child: searchTextField),
            navigatorBox
          ]),
    );
  }
}

class NavigatorsSection extends StatelessWidget {
  final double height, width;

  const NavigatorsSection(
      {super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      width: width,
      height: height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextNavigatorButton(
            onPressedFunction: () {},
            title: 'PERFUMES',
            buttonStyle: AppTheme.navigationProductSectionButtonStyle,
          ),
          const SizedBox(width: 50),
          TextNavigatorButton(
            onPressedFunction: () {},
            title: 'BRANDS',
            buttonStyle: AppTheme.navigationProductSectionButtonStyle,
          ),
          const SizedBox(width: 50),
          TextNavigatorButton(
            onPressedFunction: () {},
            title: 'GIFTS',
            buttonStyle: AppTheme.navigationProductSectionButtonStyle,
          ),
        ],
      ),
    );
  }
}

class SalesSection extends StatelessWidget {
  final double height, width;

  const SalesSection({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.cherubic,
      width: width,
      height: height,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('25% OFF - SITEWIDE -', style: AppTheme.blackMediumStyle.copyWith(fontSize: 16)),
          TextNavigatorButton(
            onPressedFunction: () {},
            title: 'click here',
            buttonStyle: AppTheme.navigationHotDealSectionButtonStyle,
          ),
          const SizedBox(width: 50),
          Text('Or', style: AppTheme.blackMediumStyle.copyWith(fontSize: 16)),
          const SizedBox(width: 50),
          Text("FREE SHIPPING \$2 MIN - ", style: AppTheme.blackMediumStyle.copyWith(fontSize: 16)),
          TextNavigatorButton(
            onPressedFunction: () {},
            title: 'click here',
            buttonStyle: AppTheme.navigationHotDealSectionButtonStyle,
          ),
        ],
      ),
    );
  }
}
