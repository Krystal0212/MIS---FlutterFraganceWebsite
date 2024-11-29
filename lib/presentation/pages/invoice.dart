import 'package:boxy/slivers.dart';
import 'package:eaudelux/utils/styles/themes.dart';
import 'package:flutter/material.dart';

import '../../utils/SharedPreferences/shared_preferences.dart';
import '../widgets/widgets.dart';

class InvoicePage extends StatefulWidget {
  const InvoicePage({super.key});

  @override
  State<StatefulWidget> createState() => InvoicePageState();
}

class InvoicePageState extends State<InvoicePage> {
  late double maxWidth, maxHeight, appBarHeight;
  late Size appBarSize;

  final List<Map<String, String>> orderList = [
    {
      "pid":"1",
      "pName":"Romano",
      "pSize":"1.6 Oz",
      "pPrice":"199",
      "pQuantity":"10",
      "pImg":"https://loe-cosmetics-us.com/cdn/shop/files/fragrance_laundry.jpg?crop=center&height=200&v=1692754461&width=200",
    },
    {
      "pid":"2",
      "pName":"Nautica",
      "pSize":"4.8 Oz",
      "pPrice":"459",
      "pQuantity":"2",
      "pImg":"https://loe-cosmetics-us.com/cdn/shop/files/fragrance_laundry.jpg?crop=center&height=200&v=1692754461&width=200",
    },
    {
      "pid":"3",
      "pName":"Old Spice Bear Glowes",
      "pSize":"2.2 Oz",
      "pPrice":"689",
      "pQuantity":"1",
      "pImg":"https://loe-cosmetics-us.com/cdn/shop/files/fragrance_laundry.jpg?crop=center&height=200&v=1692754461&width=200",
    },
  ];

  @override
  initState() {
    super.initState();

    OrderStorage.saveOrders(orderList);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    maxWidth = MediaQuery.of(context).size.width;
    maxHeight = MediaQuery.of(context).size.height;

    appBarHeight = maxHeight * 0.2;
    appBarSize = Size(maxWidth, appBarHeight);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: appBarSize,
        child: CustomAppBar(appBarSize: appBarSize,),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          width: maxWidth*0.5,
          decoration: BoxDecoration(
            color: AppTheme.primary.withOpacity(0.2),
            borderRadius: BorderRadius.circular(15)
          ),
          child: CustomScrollView(
            slivers: [
              const SliverPadding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                sliver: CustomSliverTitle(title: 'Invoice'),
              ),
              Userdata(maxWidth: maxWidth),
              ViewOrderList(
                orderList: orderList,
                maxWidth: maxWidth,
                maxHeight: maxHeight,
              ),
              InvoicePricingSliver(
                orderList: orderList,
                maxWidth: maxWidth,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
