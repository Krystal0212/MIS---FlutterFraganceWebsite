import 'package:flutter/material.dart';

import 'product_card.dart';

class ProductGrid extends StatelessWidget {
  final double maxHeight, maxWidth;

  const ProductGrid({
    super.key,
    required this.maxHeight,
    required this.maxWidth
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: maxWidth*0.2),
      sliver: SliverGrid(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 310, /// width
            mainAxisExtent: 400, /// height
            mainAxisSpacing: 15,
          ),

          delegate: SliverChildBuilderDelegate((context, index) {
            return ProductCard(
              imageUrl: 'https://loe-cosmetics-us.com/cdn/shop/files/fragrance_laundry.jpg?crop=center&height=300&v=1692754461&width=300',
              productId: 'pid123',
              title: 'Fragrance',
              price: '\$999',
              badgeText: index%2==0?'men':'women',
            );
          },
          childCount: 10),
      ),
    );
  }
}

