import 'dart:convert';
import 'dart:math';

import 'package:flutter/services.dart';
import 'package:csv/csv.dart';

import '../../presentation/model/product_model.dart';

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

    double price = double.parse("${499 + random.nextInt(201)}");
    return Perfume(
      id: 'pid$index',
      name: row[0].toString(),
      brand: row[1].toString(),
      description: row[2].toString(),
      badgeText: row[3].toString(),
      imageUrl: row[4].toString(),
      price: price,
    );
  });
}
