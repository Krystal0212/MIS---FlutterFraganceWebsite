import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

import '../../presentation/model/cart_model.dart';

class CartPreferences {
  static const _cartKey = 'CART_ITEMS';

  // Save Cart
  static Future<void> saveCart(List<CartItem> cartItems) async {
    final prefs = await SharedPreferences.getInstance();
    final cartJson = cartItems.map((item) => item.toJson()).toList();
    prefs.setString(_cartKey, jsonEncode(cartJson));
  }

  // Load Cart
  static Future<List<CartItem>> loadCart() async {
    final prefs = await SharedPreferences.getInstance();
    final cartString = prefs.getString(_cartKey);
    if (cartString != null) {
      final List<dynamic> cartJson = jsonDecode(cartString);
      return cartJson.map((item) => CartItem.fromJson(item)).toList();
    }
    return [];
  }

  // Add Item to Cart
  static Future<void> addToCart(CartItem item) async {
    final cart = await loadCart();
    final existingItem = cart.firstWhere(
          (cartItem) => cartItem.pid == item.pid,
      orElse: () => CartItem(pid: item.pid, quantity: 0),
    );

    if (existingItem.quantity == 0) {
      cart.add(item);
    } else {
      cart.remove(existingItem);
      cart.add(CartItem(pid: item.pid, quantity: existingItem.quantity + item.quantity));
    }
    await saveCart(cart);
  }

  // Remove Item from Cart
  static Future<void> removeFromCart(String pid) async {
    final cart = await loadCart();
    cart.removeWhere((item) => item.pid == pid);
    await saveCart(cart);
  }
}
