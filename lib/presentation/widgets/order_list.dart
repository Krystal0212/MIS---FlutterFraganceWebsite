import 'package:flutter/material.dart';

import '../../utils/SharedPreferences/shared_preferences.dart';
import '../model/product_model.dart';
import 'widgets.dart';

class OrderList extends StatelessWidget {
  final List<Perfume> orderList;
  final double maxWidth, maxHeight;

  final VoidCallback onOrderChanged;

  const OrderList({
    super.key,
    required this.orderList,
    required this.maxWidth,
    required this.maxHeight,
    required this.onOrderChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(horizontal: maxWidth*0.25),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate((context, index){
          final order = orderList[index];
          return CustomListTile(
            order: order,
            onQuantityChanged: (newQuantity) async {
              await OrderStorage.updateOrderQuantity(order.id, newQuantity);
              onOrderChanged();
            },
            onDelete: () async {
              await OrderStorage.deleteOrder(order.id);
              onOrderChanged();
            },
          );
        },
        childCount: orderList.length),
      ),
    );
  }
}

class ViewOrderList extends StatelessWidget {
  final List<Perfume> orderList;
  final double maxWidth, maxHeight;

  const ViewOrderList({
    super.key,
    required this.orderList,
    required this.maxWidth,
    required this.maxHeight,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index){
        final order = orderList[index];
        return CustomViewListTile(
          order: order,
        );
      }, childCount: orderList.length),
    );
  }
}