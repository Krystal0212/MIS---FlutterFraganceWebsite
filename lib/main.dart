import 'package:eaudelux/firebase_options.dart';
import 'package:eaudelux/presentation/pages/homepage.dart';
import 'package:eaudelux/presentation/pages/product.dart';
import 'package:eaudelux/utils/styles/themes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'presentation/pages/product_detail.dart';

void main() async{
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: const ProductDetailPage(),
    );
  }
}
