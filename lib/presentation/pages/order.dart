import 'package:eaudelux/presentation/pages/invoice.dart';
import 'package:eaudelux/utils/activity/routing.dart';
import 'package:eaudelux/utils/styles/themes.dart';
import 'package:flutter/material.dart';

import '../../utils/activity/load_data.dart';
import '../model/product_model.dart';
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



  late ValueNotifier<List<Perfume>> orderListNotifier;

  @override
  void initState() {
    super.initState();

    orderListNotifier = ValueNotifier<List<Perfume>>([]);
    _loadOrders();
  }

  @override
  void didChangeDependencies(){
    super.didChangeDependencies();

    maxWidth = MediaQuery.of(context).size.width;
    maxHeight = MediaQuery.of(context).size.height;

    appBarHeight = maxHeight * 0.2;
    appBarSize = Size(maxWidth, appBarHeight);
  }

  Future<void> _loadOrders() async {
    final orders = await OrderStorage.loadOrders();
    orderListNotifier.value = orders;
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
          if (orderList.isEmpty) {
            return CustomScrollView(
              slivers: [
                const CustomFloatingSliverTitle(title: 'Current Orders', floatingLevel: 1,),

                SliverToBoxAdapter(
                  child: Center(
                    child: Card(
                    color: AppTheme.white,
                    elevation: 10,
                    child: Container(
                      width: maxWidth*0.6,
                      height: maxHeight*0.5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.remove_shopping_cart_outlined, color: AppTheme.black, size: 35,),
                          const SizedBox(width: 15,),
                          Text(
                            "No item in cart yet",
                            style: TextStyle(fontSize: 35, color: AppTheme.black),
                          ),
                        ],
                      ),
                    ),
                                    ),
                  ),
                ),
                CustomSliverTextButton(
                  onPressed: () async {
                    print(orderList);
                    orderDialog(context);
                  },
                  text: 'Purchase',
                  isActivated: orderList.isNotEmpty,
                  primaryColor: AppTheme.primary,
                  secondaryColor: AppTheme.white,
                ),
              ],
            );
          }
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
                    orderDialog(context);
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

void orderDialog(BuildContext context) {
  final TextEditingController nameController =
  TextEditingController();
  final TextEditingController phoneController =
  TextEditingController();
  final TextEditingController addressController =
  TextEditingController();
  final TextEditingController emailController =
  TextEditingController();

  String? selectedDiscountTitle, selectedPaymentMethod;
  int selectedDiscountValue = 0;
  List<String> paymentMethods = ['Bank', 'Momo', 'ZaloPay', 'Visa'];

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
          height: 650,
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
                    const SizedBox(height: 20),
                    // Dropdown for selecting discount
                    DropdownButtonFormField<Map<String, dynamic>>(
                      decoration: const InputDecoration(
                        labelText: 'Choose Discount',
                        border: OutlineInputBorder(),
                      ),
                      value: null,
                      items: vouchers.map((voucher) {
                        return DropdownMenuItem(
                          value: voucher,
                          child: Text('${voucher['title']} (${voucher['discount']}%)'),
                        );
                      }).toList(),
                      onChanged: (value) {
                        selectedDiscountTitle = value?['title'];
                        selectedDiscountValue = value?['discount'] ?? 0;
                      },
                    ),

                    const SizedBox(height: 20),
                    // Dropdown for selecting payment method
                    DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        labelText: 'Choose Payment Method',
                        border: OutlineInputBorder(),
                      ),
                      value: selectedPaymentMethod,
                      items: paymentMethods.map((method) {
                        return DropdownMenuItem(
                          value: method,
                          child: Text(method),
                        );
                      }).toList(),
                      onChanged: (value) {
                        selectedPaymentMethod = value;
                      },
                    ),
                  ],
                )
              ),
              const SizedBox(height: 15),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  AppRoutes.push(context, InvoicePage(
                    selectedDiscountValue: selectedDiscountValue,
                    name: nameController.text,
                    phone: phoneController.text,
                    email: emailController.text,
                    address: addressController.text,
                  ));
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






