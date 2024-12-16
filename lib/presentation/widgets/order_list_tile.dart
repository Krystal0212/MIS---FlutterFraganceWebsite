import 'package:cached_network_image/cached_network_image.dart';
import '../model/product_model.dart';
import '../widgets/widgets.dart';


import 'package:flutter/material.dart';

import '../../utils/styles/themes.dart';

class CustomListTile extends StatelessWidget {
  final Perfume order;
  final Function(int) onQuantityChanged;
  final VoidCallback onDelete;

  const CustomListTile({
    super.key,
    required this.order,
    required this.onQuantityChanged,
    required this.onDelete
  });


  @override
  Widget build(BuildContext context) {
    ValueNotifier<int> quantityNotifier = ValueNotifier(
        order.quantity
    );
    return Padding(
      padding: const EdgeInsets.all(5),
      child: RepaintBoundary(
        child: Card(
          color: AppTheme.white,
          surfaceTintColor: AppTheme.black.withOpacity(0.2),
          child: InkWell(
            onTap: (){},
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TileImg(
                    imgUrl: order.imageUrl,
                  imgHeight: 200,
                  imgWidth: 200,
                ),
                TileContext(
                  prodName: order.name,
                  prodSize: order.size[0],
                ),
                TileActivity(
                  onQuantityChanged: onQuantityChanged,
                  onDelete: onDelete,
                  quantityNotifier: quantityNotifier,
                  prodPrice: order.price,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TileImg extends StatelessWidget {
  final double imgWidth, imgHeight;
  final String imgUrl;

  const TileImg({
    super.key,
    required this.imgUrl,
    required this.imgWidth,
    required this.imgHeight
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius:
      const BorderRadius.all(Radius.circular(12)),
      child: CachedNetworkImage(
        width: imgWidth,
        height: imgHeight,
        maxHeightDiskCache: 300,
        maxWidthDiskCache: 200,
        imageUrl: imgUrl,
        errorWidget: (context, url, error) => const Center(
          child: Icon(Icons.image_not_supported_outlined),
        ),
        placeholder: (context, url) => const Center(
          child: CircularProgressIndicator(),
        ),
        placeholderFadeInDuration: const Duration(milliseconds: 300),
        fit: BoxFit.fill,
      ),
    );
  }
}

class TileContext extends StatelessWidget {
  final String prodName, prodSize;

  const TileContext({
    super.key,
    required this.prodName,
    required this.prodSize,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
          children: [
            Text(
              prodName,
              style: AppTheme.tileHeader,
            ),
            Text(
              "Size: $prodSize",
              style: AppTheme.tileSubString,
            ),
          ],
        )
    );
  }
}

class TileActivity extends StatelessWidget {
  final Function(int) onQuantityChanged;
  final Function() onDelete;
  final ValueNotifier<int> quantityNotifier;
  final double prodPrice;

  const TileActivity({
    super.key,
    required this.onQuantityChanged,
    required this.onDelete,
    required this.quantityNotifier,
    required this.prodPrice
  });

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: quantityNotifier,
      builder: (context, count, _){
        double total = count * prodPrice;
        return Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                "\$$total",
                style: AppTheme.tileAlertString,
              ),
            ),
            CountButton(
              quantityNotifier: quantityNotifier,
              onQuantityChanged: onQuantityChanged,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: IconButton(
                  onPressed: onDelete,
                  color: AppTheme.dangerous,
                  icon: const Icon(Icons.delete_outline)
              ),
            ),
          ],
        );
      },
    );
  }
}

////////////////////////////////////////////////////////////////////////////////

class CustomViewListTile extends StatelessWidget {
  final Perfume order;

  const CustomViewListTile({
    super.key,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: RepaintBoundary(
        child: Card(
          color: AppTheme.white,
          surfaceTintColor: AppTheme.black.withOpacity(0.2),
          child: InkWell(
            onTap: (){},
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TileImg(
                    imgUrl: order.imageUrl,
                  imgWidth: 60,
                  imgHeight: 60,
                ),
                ViewTileContext(
                  prodName: order.name,
                  prodSize: order.size[0],
                ),
                ViewTilePricing(
                  prodPrice: order.price,
                  prodQuantity: order.quantity,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class ViewTilePricing extends StatelessWidget {
  final int prodQuantity;
  final double prodPrice;

  const ViewTilePricing({
    super.key,
    required this.prodPrice,
    required this.prodQuantity
  });

  @override
  Widget build(BuildContext context) {
    double total = prodQuantity * prodPrice;
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            "\$$total",
            style: AppTheme.tileAlertString,
          ),
        ),
      ],
    );
  }
}

class ViewTileContext extends StatelessWidget {
  final String prodName, prodSize;

  const ViewTileContext({
    super.key,
    required this.prodName,
    required this.prodSize,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Text(
                prodName,
                style: AppTheme.tileHeader,
              ),
            ),
            const SizedBox(width: 15,),
            Expanded(
              flex: 3,
              child: Text(
                "Size: $prodSize",
                style: AppTheme.tileSubString,
              ),
            ),
          ],
        )
    );
  }
}