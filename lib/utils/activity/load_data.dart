import 'dart:convert';
import 'dart:math';

import 'package:eaudelux/utils/styles/themes.dart';
import 'package:flutter/services.dart';
import 'package:csv/csv.dart';

import '../../presentation/model/product_model.dart';
import '../../presentation/model/user_model.dart';

Future<List<Perfume>> loadPerfumesFromCsv(String assetPath) async {
  // Load CSV file as a string

  final rawData = await rootBundle.load(assetPath);
  final stringData = utf8.decode(
    rawData.buffer.asUint8List(),
    allowMalformed: true,
  );
  // Parse the CSV
  final csvData = const CsvToListConverter().convert(stringData, eol: '\n');

  final random = Random();
  // Map each row (after the header) to a Perfume object with an index
  return List.generate(200, (index) {
    final row = csvData[index + 1]; // Skip the header row
    double price = double.parse("${199 + random.nextInt(201)}");
    final badgeText = row[3]
        .toString()
        .split(',')
        .map((badge) => badge.trim())
        .toList();
    return Perfume(
      id: 'pid$index',
      name: row[0].toString(),
      brand: row[1].toString(),
      description: row[2].toString(),
      badgeText: badgeText,
      imageUrl: row[4].toString(),
      size: ['30 ml','50 ml','100 ml','250 ml'],
      quantity: 200,
      price: price,
    );
  });
}

List<User> generatePseudoUsers() {
  return List.generate(3, (index) {
    return User(
      uid: 'uid$index',
      username: 'User$index',
      age: 18 + index,
      sex: 'Male',
      email: 'user$index@gmail.com',
      address: 'Address $index',
      profileImageUrl: 'https://picsum.photos/200?random=$index',
      password: 'password$index',
    );
  });
}

List<Map<String,dynamic>> vouchers = [
  {
    'imgTitle':'Discount',
    'imgColor': AppTheme.primary,
    'title':'New guest gifts',
    'subtitle':'Apply 15% discount for first purchase',
    'discount': 15,
  },
  {
    'imgTitle':'Discount',
    'imgColor': AppTheme.primary,
    'title':'Christmas surprise',
    'subtitle':'Apply 24% discount for next purchase',
    'discount': 24,
  },
  {
    'imgTitle':'Compensate',
    'imgColor': AppTheme.error,
    'title':'Compensate voucher',
    'subtitle':'Apply 25% discount for next purchase',
    'discount': 25,
  },
  {
    'imgTitle':'Compensate',
    'imgColor': AppTheme.error,
    'title':'Compensate voucher',
    'subtitle':'Apply 100% discount for specific product',
    'discount': 100,
  },
];