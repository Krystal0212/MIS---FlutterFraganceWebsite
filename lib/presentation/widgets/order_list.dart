import 'package:flutter/material.dart';

class OrderList extends StatelessWidget {
  final List<Map<String, String>> orderList;
  const OrderList({
    super.key,
    required this.orderList
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index){
        return ;
      }),
    );
  }
}