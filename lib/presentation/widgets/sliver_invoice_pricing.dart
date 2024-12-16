import 'package:flutter/material.dart';

import '../../utils/styles/themes.dart';
import '../model/product_model.dart';

class InvoicePricingSliver extends StatelessWidget {
  final List<Perfume> orderList;
  final double maxWidth;

  const InvoicePricingSliver({
    super.key,
    required this.orderList,
    required this.maxWidth
  });

  @override
  Widget build(BuildContext context) {
    double price = calculatePrice(orderList);
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        alignment: Alignment.bottomRight,
        child: Text(
            'Total Price: \$$price',
          style: AppTheme.dangerTextStyle,
        ),
      ),
    );
  }

  double calculatePrice(List<Perfume> orderList) {
    double totalPrice = 0.0;

    for (var order in orderList) {
      double price = order.price ?? 0.0;
      int quantity = order.quantity ?? 0;

      // Add to total price
      totalPrice += price * quantity;
    }

    return totalPrice;
  }
}
