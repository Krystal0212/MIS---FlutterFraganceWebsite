import 'package:eaudelux/presentation/pages/homepage.dart';
import 'package:eaudelux/presentation/widgets/sliver_button.dart';
import 'package:eaudelux/utils/activity/routing.dart';
import 'package:flutter/material.dart';

import '../../utils/styles/themes.dart';
import '../model/product_model.dart';

class InvoicePricingSliver extends StatelessWidget {
  final List<Perfume> orderList;
  final double maxWidth;
  final int discountValue;

  const InvoicePricingSliver({
    super.key,
    required this.orderList,
    required this.maxWidth,
    required this.discountValue,
  });

  @override
  Widget build(BuildContext context) {
    double originalPrice = calculatePrice(orderList);
    double discountedPrice = originalPrice * (1 - discountValue / 100);
    if (originalPrice == discountedPrice){
      return SliverToBoxAdapter(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          alignment: Alignment.bottomRight,
          child: Text(
            'Total Price: \$${discountedPrice.toStringAsFixed(2)}',
            style: AppTheme.dangerTextStyle,
          ),
        ),
      );
    }

    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        alignment: Alignment.bottomRight,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            // Original Price (Crossed out and Grey)
            Text(
              '\$${originalPrice.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 16,
                color: AppTheme.hintTextColor,
                decoration: TextDecoration.lineThrough,
              ),
            ),
            const SizedBox(height: 5),

            // Discount Display (Red and Bold)
            Text(
              'Discount: $discountValue% (-\$${(originalPrice - discountedPrice).toStringAsFixed(2)})',
              style: TextStyle(
                fontSize: 16,
                color: AppTheme.dangerous,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),

            // Final Price (Highlighted)
            Text(
              'Final Price: \$${discountedPrice.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 18,
                color: AppTheme.dangerous,
                fontWeight: FontWeight.bold,
              ),
            ),

            TextButton(
                onPressed: (){
                  confirmDialog(context);
                },
                style: TextButton.styleFrom(
                  backgroundColor: AppTheme.primary
                ),
                child: Text(
                    'Confirm',
                  style: TextStyle(
                    color: AppTheme.white,
                    fontSize: 20
                  ),
                )
            )
          ],
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

void confirmDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Container(
          height: 150,
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                  'Thanks for your purchase',
                style: TextStyle(
                  color: AppTheme.black,
                  fontSize: 25
                ),
              ),
              TextButton(
                  onPressed: (){
                    AppRoutes.pushReplacement(context, const HomePage());
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: AppTheme.primary
                  ),
                  child: Text(
                    'Confirm',
                    style: TextStyle(
                    color: AppTheme.white,
                    fontSize: 18
                ),
              ))
            ],
          ),
        ),
      );
    },
  );
}