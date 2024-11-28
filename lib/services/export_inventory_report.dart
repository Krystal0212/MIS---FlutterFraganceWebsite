// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;  // Web package from Dart

import 'package:eaudelux/presentation/widgets/import_packages.dart';
import 'package:excel/excel.dart';
import 'package:flutter/foundation.dart';

class ExcelExporter {
  // Function to export perfume data to an Excel file
  static Future<void> exportPerfumeDataToExcel(
      List<Perfume> perfumes, BuildContext context) async {
    // Create an Excel object
    var excel = Excel.createExcel();
    Sheet sheet = excel['Sheet1'];

    // Add headers to the Excel sheet
    sheet.appendRow([
      'Name',
      'Sold',
      'Stock',
      'Receive',
      'Price',
      'Unit Cost',
      'Brand'
    ]);

    // Add perfume data to the Excel sheet
    for (var perfume in perfumes) {
      sheet.appendRow([
        perfume.name,
        perfume.sold,
        perfume.stock,
        perfume.receive,
        perfume.price,
        perfume.unitCost,
        perfume.brand.name
      ]);
    }

    // Convert the Excel object to bytes
    Uint8List? excelBytes = excel.encode() as Uint8List?;

    if (excelBytes == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Error encoding Excel file')),
      );
      return;
    }

    if (kIsWeb) {
      // For Web: Create a Blob and generate a download URL
      final blob = html.Blob([excelBytes]);
      final url = html.Url.createObjectUrlFromBlob(blob);
      // ignore: unused_local_variable
      final anchor = html.AnchorElement(href: url)
        ..setAttribute('download', 'perfume_data.xlsx')
        ..click(); // Automatically trigger the download
      html.Url.revokeObjectUrl(url);  // Cleanup the URL after download
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Excel file downloaded!')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('File export is only supported on the web for now.')),
      );
    }
  }
}
