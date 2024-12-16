import 'package:eaudelux/presentation/pages/product_detail.dart';
import 'package:eaudelux/utils/activity/routing.dart';
import 'package:flutter/material.dart';

import '../model/product_model.dart';
import 'product_card.dart';
import 'pseudo_product_data.dart';

class ProductGrid extends StatelessWidget {
  final double maxHeight, maxWidth;
  final List<Perfume> perfumes;

  const ProductGrid({
    super.key,
    required this.maxHeight,
    required this.maxWidth,
    required this.perfumes
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: maxWidth*0.2),
      sliver: SliverGrid(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 310, /// width
            mainAxisExtent: 450, /// height
            mainAxisSpacing: 15,
          ),

          delegate: SliverChildBuilderDelegate((context, index) {
            final item = perfumes[index];
            return ProductCard(
              perfumeData: item,
              imageUrl: item.imageUrl.isNotEmpty
                  ? item.imageUrl
                  : 'https://loe-cosmetics-us.com/cdn/shop/files/fragrance_laundry.jpg?crop=center&height=300&v=1692754461&width=300',
              productId: item.id,
              title: item.name,
              price: "\$${item.price}",
              badgeText: 'Hot',
              brand: item.brand,
              onButtonClick: () {
                AppRoutes.push(context, ProductDetailPage(perfumeData: item));
              },
              onBuy: (){
                AppRoutes.push(context, ProductDetailPage(perfumeData: item));
              },
            );
          },
          childCount: perfumes.length),
      ),
    );
  }
}

