import 'package:boxy/slivers.dart';
import 'package:eaudelux/utils/styles/themes.dart';
import 'package:flutter/material.dart';

import '../../utils/SharedPreferences/shared_preferences.dart';
import '../model/product_model.dart';
import '../widgets/widgets.dart';

class InvoicePage extends StatefulWidget {
  final int selectedDiscountValue;
  final String? name, phone, address, email;

  const InvoicePage({
    super.key,
    required this.selectedDiscountValue,
    this.name,
    this.email,
    this.address,
    this.phone
  });

  @override
  State<StatefulWidget> createState() => InvoicePageState();
}

class InvoicePageState extends State<InvoicePage> {
  late double maxWidth, maxHeight, appBarHeight;
  late Size appBarSize;

  late Future<List<Perfume>> orderList;

  @override
  void initState() {
    super.initState();
    orderList = OrderStorage.loadOrders();
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
        child: CustomAppBar(appBarSize: appBarSize),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 20),
          width: maxWidth * 0.5,
          decoration: BoxDecoration(
            color: AppTheme.primary.withOpacity(0.2),
            borderRadius: BorderRadius.circular(15),
          ),
          child: FutureBuilder<List<Perfume>>(
            future: orderList,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else if (snapshot.hasData && snapshot.data!.isEmpty) {
                return const Center(child: Text('No orders found.'));
              }

              final orders = snapshot.data!;

              return CustomScrollView(
                slivers: [
                  const SliverPadding(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    sliver: CustomSliverTitle(title: 'Invoice'),
                  ),
                  Userdata(
                      maxWidth: maxWidth,
                    name: widget.name,
                    phone: widget.phone,
                    address: widget.address,
                    email: widget.email,
                  ),
                  ViewOrderList(
                    orderList: orders,
                    maxWidth: maxWidth,
                    maxHeight: maxHeight,
                  ),
                  InvoicePricingSliver(
                    orderList: orders,
                    maxWidth: maxWidth,
                    discountValue: widget.selectedDiscountValue,
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
