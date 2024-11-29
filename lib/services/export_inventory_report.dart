// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:eaudelux/presentation/widgets/import_packages.dart';
import 'package:excel/excel.dart';
import 'package:flutter/foundation.dart';
import 'dart:typed_data';

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
      // Flatten or format lists into strings
      String stock = perfume.stock.join(', ');
      String receiveFromBrand = perfume.receiveFromBrand.join(', ');
      String price = perfume.price.join(', ');
      String unitCost = perfume.unitCost.join(', ');
      
      // Add data as a row
      sheet.appendRow([
        perfume.name,
        '', // Replace with actual sold data if available
        stock,
        receiveFromBrand,
        price,
        unitCost,
        perfume.brand.name,
      ]);
    }

    // Convert the Excel object to bytes
    final List<int>? excelBytes = excel.encode();

    if (excelBytes == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Error encoding Excel file')),
      );
      return;
    }

    // Handle Web download
    if (kIsWeb) {
      try {
        // Create a Blob and generate a download URL
        final blob = html.Blob([excelBytes]);
        final url = html.Url.createObjectUrlFromBlob(blob);

        // Generate and click the download link
        final anchor = html.AnchorElement(href: url)
          ..setAttribute('download', 'perfume_data.xlsx')
          ..click();

        // Cleanup the URL after download
        html.Url.revokeObjectUrl(url);

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Excel file downloaded!')),
        );
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error downloading file: $e')),
        );
      }
    } else {
      // For platforms other than web
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text('File export is only supported on the web for now.')),
      );
    }
  }
}
