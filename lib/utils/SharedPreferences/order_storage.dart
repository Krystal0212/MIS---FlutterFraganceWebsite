import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../../presentation/model/product_model.dart';

class OrderStorage {
  static const _ordersKey = 'orders';

  // Save orders list to storage
  static Future<void> saveOrders(List<Perfume> orders) async {
    final prefs = await SharedPreferences.getInstance();
    final ordersJson = jsonEncode(orders.map((e) => e.toJson()).toList());
    await prefs.setString(_ordersKey, ordersJson);
  }

  // Load orders list from storage
  static Future<List<Perfume>> loadOrders() async {
    final prefs = await SharedPreferences.getInstance();
    final ordersJson = prefs.getString(_ordersKey);

    if (ordersJson == null) return [];

    final List<dynamic> decodedList = jsonDecode(ordersJson);
    return decodedList.map((item) => Perfume.fromJson(item)).toList();
  }

  // Add or update an order
  static Future<void> addOrder(Perfume perfume, int quantity) async {
    final orders = await loadOrders();
    bool isUpdated = false;

    for (var order in orders) {
      if (order.id == perfume.id) {
        order.quantity += quantity; // Update quantity if order exists
        isUpdated = true;
        break;
      }
    }

    if (!isUpdated) {
      // Add a new order if it doesn't exist
      orders.add(perfume.copyWith(quantity: quantity));
    }

    await saveOrders(orders);
  }

  // Update a single order's quantity in storage
  static Future<void> updateOrderQuantity(String id, int newQuantity) async {
    final orders = await loadOrders();
    for (var order in orders) {
      if (order.id == id) {
        order.quantity = newQuantity;
        break;
      }
    }
    await saveOrders(orders);
  }

  // Delete an order
  static Future<void> deleteOrder(String id) async {
    final orders = await loadOrders();
    orders.removeWhere((order) => order.id == id);
    await saveOrders(orders);
  }
}