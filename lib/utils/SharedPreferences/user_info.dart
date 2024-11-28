import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserSharedPreference {
  static const _userKey = 'UsersInfo';

  // Save user info
  static Future<void> saveUserInfo(Map<String, String> userInfo) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_userKey, userInfo.toString());
  }

  // Get user info
  static Future<Map<String, String>> getUserInfo() async {
    final prefs = await SharedPreferences.getInstance();
    final userInfoString = prefs.getString(_userKey);
    if (userInfoString == null || userInfoString.isEmpty) {
      return {};
    }

    // Convert the saved string back to a Map
    return Map.fromEntries(
      userInfoString
          .replaceAll(RegExp(r'[{} ]'), '')
          .split(',')
          .map((item) => item.split(':'))
          .map((kv) => MapEntry(kv[0].trim(), kv[1].trim())),
    );
  }

  // Update user info
  static Future<void> updateUserInfo(String key, String value) async {
    final currentData = await getUserInfo();
    currentData[key] = value;
    await saveUserInfo(currentData);
  }

  // Delete user info
  static Future<void> deleteUserInfo() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_userKey);
  }
}