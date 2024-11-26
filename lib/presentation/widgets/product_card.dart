import 'package:cached_network_image/cached_network_image.dart';

import 'package:eaudelux/utils/styles/themes.dart';

import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String productId;
  final String title;
  final String price;
  final String? badgeText;
  final bool showHoverButton; // Toggle hover button
  final VoidCallback? onHoverButtonClick; // Action on hover button click

  const ProductCard({
    super.key,
    required this.imageUrl,
    required this.productId,
    required this.title,
    required this.price,
    this.badgeText,
    this.showHoverButton = false,
    this.onHoverButtonClick,
  });

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Image
            CardImage(
              imageUrl: imageUrl,
              badgeText: badgeText,
              onHoverButtonClick: onHoverButtonClick,
            ),

            // Title & Price
            CardInfo(
              title: title,
              price: price,
            ),

            // Cart & buy buttons
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 5, 5),
              child: SizedBox(
                width: 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        onPressed: (){},
                        color: AppTheme.black,
                        icon: const Icon(Icons.add_shopping_cart)
                    ),
                    IconButton(
                        onPressed: (){},
                        color: AppTheme.black,
                        icon: const Icon(Icons.shopping_bag_outlined)
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CardImage extends StatelessWidget{
  final String imageUrl;
  final String? badgeText;
  final VoidCallback? onHoverButtonClick;

  const CardImage({
    super.key,
    required this.imageUrl,
    this.badgeText,
    this.onHoverButtonClick
  });

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<bool> isHovered = ValueNotifier(false);
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
      child: ValueListenableBuilder(
          valueListenable: isHovered,
          builder: (context, isHovering, child) {
            return InkWell(
              onTap: onHoverButtonClick,
              onHover: (hover) {
                print('hovering on a object');
                isHovered.value = hover;
              },
              //onExit: (_) => isHovered.value = false,
              child: Stack(
                children: [
                  // Product Image
                  ClipRRect(
                    borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(12)),
                    child: CachedNetworkImage(
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
                      height: 250,
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
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          badgeText!,
                          style: const TextStyle(
                            color: Colors.white,
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
      ),
    );
  }

}

class CardInfo extends StatelessWidget{
  final String title, price;

  const CardInfo({
    super.key,
    required this.title,
    required this.price
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            price,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

class CardActivity extends StatelessWidget{
  final String productId;

  const CardActivity({
    super.key,
    required this.productId
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
                  print('Add $productId into cart');
                },
                color: AppTheme.black,
                icon: const Icon(Icons.add_shopping_cart)
            ),
            IconButton(
                onPressed: (){
                  print('Buy $productId');
                },
                color: AppTheme.black,
                icon: const Icon(Icons.shopping_bag_outlined)
            )
          ],
        ),
      ),
    );
  }
}