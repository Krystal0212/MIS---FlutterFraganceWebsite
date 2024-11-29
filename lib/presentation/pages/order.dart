import 'package:eaudelux/utils/styles/themes.dart';
import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

import '../../utils/SharedPreferences/shared_preferences.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  late double maxWidth, maxHeight, appBarHeight;
  late Size appBarSize;



  final ValueNotifier<List<Map<String, String>>> orderListNotifier =
        ValueNotifier<List<Map<String, String>>>([
          {
            "pid":"1",
            "pName":"Romano",
            "pSize":"1.6 Oz",
            "pPrice":"199",
            "pQuantity":"10",
            "pImg":"https://loe-cosmetics-us.com/cdn/shop/files/fragrance_laundry.jpg?crop=center&height=200&v=1692754461&width=200",
          },
          {
            "pid":"2",
            "pName":"Nautica",
            "pSize":"4.8 Oz",
            "pPrice":"459",
            "pQuantity":"2",
            "pImg":"https://loe-cosmetics-us.com/cdn/shop/files/fragrance_laundry.jpg?crop=center&height=200&v=1692754461&width=200",
          },
          {
            "pid":"3",
            "pName":"Old Spice Bear Glowes",
            "pSize":"2.2 Oz",
            "pPrice":"689",
            "pQuantity":"1",
            "pImg":"https://loe-cosmetics-us.com/cdn/shop/files/fragrance_laundry.jpg?crop=center&height=200&v=1692754461&width=200",
          },
        ]);

  @override
  void initState() {
    super.initState();

    OrderStorage.saveOrders(orderListNotifier.value);
  }

  @override
  void didChangeDependencies() async{
    super.didChangeDependencies();

    maxWidth = MediaQuery.of(context).size.width;
    maxHeight = MediaQuery.of(context).size.height;

    appBarHeight = maxHeight * 0.2;
    appBarSize = Size(maxWidth, appBarHeight);
  }

  Future<void> _loadOrders() async {
    final orders = await OrderStorage.loadOrders();
    orderListNotifier.value = orders; // Update ValueNotifier
  }

  @override
  void dispose() {
    orderListNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: appBarSize,
          child: CustomAppBar(appBarSize: appBarSize)
      ),
      body: ValueListenableBuilder(
        valueListenable: orderListNotifier,
        builder: (context, orderList, _) {
          return CustomScrollView(
            slivers: [
              const CustomFloatingSliverTitle(title: 'Current Orders', floatingLevel: 1,),
              OrderList(
                orderList: orderList,
                maxWidth: maxWidth,
                maxHeight: maxHeight,
                onOrderChanged: _loadOrders,
              ),
              CustomSliverTextButton(
                  onPressed: () async {
                    final orders = await OrderStorage.loadOrders();
                    print(orders);
                    orderDialog(context, orders);
                  },
                  text: 'Purchase',
                  primaryColor: AppTheme.primary,
                  secondaryColor: AppTheme.white,
              ),
            ],
          );
        }
      ),
    );
  }
}

void orderDialog(BuildContext context, List<Map<String, String>> orders) {
  final TextEditingController nameController =
  TextEditingController();
  final TextEditingController phoneController =
  TextEditingController();
  final TextEditingController addressController =
  TextEditingController();
  final TextEditingController emailController =
  TextEditingController();

  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Container(
          padding: const EdgeInsets.all(16),
          width: 800,
          height: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Before Purchasing',
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15),
              Expanded(
                child: Column(
                  children: [
                    TitleWithTextBox(title: 'Name:',controller: nameController,),
                    TitleWithTextBox(title: 'Address:',controller: addressController,),
                    TitleWithTextBox(title: 'Phone Number:',controller: phoneController,),
                    TitleWithTextBox(title: 'Email:',controller: emailController,),
                  ],
                )
              ),
              const SizedBox(height: 15),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                },
                style: AppTheme.defaultStyle,
                child: Text(
                  'Confirm',
                  style: AppTheme.whiteMediumStyle,
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

/*
* Text(
    'You have purchased products successfully',
    textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: 20,
    ),
  )
* */





