import 'package:cached_network_image/cached_network_image.dart';
import 'package:eaudelux/presentation/model/product_model.dart';
import 'package:eaudelux/presentation/pages/pages.dart';
import 'package:eaudelux/presentation/widgets/text_navigator_button.dart';
import 'package:eaudelux/utils/activity/routing.dart';

import 'package:eaudelux/utils/styles/themes.dart';

import 'package:flutter/material.dart';

import '../../utils/SharedPreferences/order_storage.dart';

class ProductCard extends StatelessWidget {
  final String imageUrl, productId, title, price, brand;
  final String? badgeText;
  final bool showHoverButton;
  final VoidCallback? onButtonClick;
  final Function() onBuy;
  final Perfume perfumeData;

  const ProductCard({
    super.key,
    required this.imageUrl,
    required this.productId,
    required this.title,
    required this.price,
    required this.brand,
    this.badgeText,
    this.showHoverButton = false,
    this.onButtonClick,
    required this.onBuy,
    required this.perfumeData

  });

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: Card(
        color: AppTheme.white,
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: InkWell(
          onTap: onButtonClick,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // Image
              CardImage(
                imageUrl: imageUrl,
                badgeText: badgeText,
              ),

              // Title & Price
              CardInfo(
                title: title,
                price: price,
                brand: brand,
              ),

              // Cart & buy buttons
              Expanded(
                  child: CardActivity(
                    productId: productId,
                    onBuy: onBuy,
                    perfumeData: perfumeData
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CardImage extends StatelessWidget{
  final String imageUrl;
  final String? badgeText;

  const CardImage({
    super.key,
    required this.imageUrl,
    this.badgeText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
      child: Stack(
        children: [
          // Product Image
          ClipRRect(
            borderRadius:
            const BorderRadius.vertical(top: Radius.circular(12)),
            child: CachedNetworkImage(
              width: 300,
              height: 230,
              maxHeightDiskCache: 300,
              maxWidthDiskCache: 200,
              imageUrl: imageUrl,
              errorWidget: (context, url, error) => const Center(
                child: Icon(Icons.image_not_supported_outlined),
              ),
              placeholder: (context, url) => const Center(
                child: CircularProgressIndicator(),
              ),
              placeholderFadeInDuration: const Duration(milliseconds: 300),
              fit: BoxFit.fill,
            ),
          ),

          // Badge
          if (badgeText != null)
            Positioned(
              top: 8,
              left: 8,
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: AppTheme.primary,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  badgeText!,
                  style: TextStyle(
                    color: AppTheme.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

}

class CardInfo extends StatelessWidget{
  final String title, price, brand;

  const CardInfo({
    super.key,
    required this.title,
    required this.price,
    required this.brand
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            brand,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            title,
            style: const TextStyle(
              fontSize: 15,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            price,
            style: TextStyle(
              fontSize: 20,
              color: AppTheme.labelTextColor,
            ),
          ),
        ],
      ),
    );
  }
}

class CardActivity extends StatelessWidget{
  final String productId;
  final Perfume perfumeData;
  final Function() onBuy;

  const CardActivity({
    super.key,
    required this.productId,
    required this.onBuy,
    required this.perfumeData
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 5, 5),
      child: SizedBox(
        width: 300,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
                onPressed: (){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Center(
                        child: Text('Added to cart!',
                        style: AppTheme.whiteMediumStyle
                        ),
                      ),
                      duration: Duration(seconds: 2),
                    ),
                  );
                  OrderStorage.addOrder(perfumeData,1);
                  print('Add $productId into cart');
                },
                color: AppTheme.black,
                icon: const Icon(Icons.add_shopping_cart)
            ),
            IconButton(
                onPressed: onBuy,
                color: AppTheme.black,
                icon: const Icon(Icons.shopping_bag_outlined)
            )
          ],
        ),
      ),
    );
  }
}