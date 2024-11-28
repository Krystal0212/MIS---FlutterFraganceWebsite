import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class OrderStorage {
  static const _ordersKey = 'orders';

  // Save orders list to storage
  static Future<void> saveOrders(List<Map<String, String>> orders) async {
    final prefs = await SharedPreferences.getInstance();
    final ordersJson = jsonEncode(orders); // Convert orders list to JSON string
    await prefs.setString(_ordersKey, ordersJson);
  }

  // Load orders list from storage
  static Future<List<Map<String, String>>> loadOrders() async {
    final prefs = await SharedPreferences.getInstance();
    final ordersJson = prefs.getString(_ordersKey);

    if (ordersJson == null) return [];

    final decodedList = jsonDecode(ordersJson);

    // Safely cast to List<Map<String, String>>
    return (decodedList as List<dynamic>)
        .map((item) => Map<String, String>.from(item as Map))
        .toList();
  }

  // Update a single order's quantity in storage
  static Future<void> updateOrderQuantity(String pid, int newQuantity) async {
    final orders = await loadOrders();
    for (var order in orders) {
      if (order['pid'] == pid) {
        order['pQuantity'] = newQuantity.toString();
      }
    }
    await saveOrders(orders);
  }

  // Delete an order
  static Future<void> deleteOrder(String pid) async {
    final orders = await loadOrders();
    orders.removeWhere((order) => order['pid'] == pid);
    await saveOrders(orders);
  }
}
