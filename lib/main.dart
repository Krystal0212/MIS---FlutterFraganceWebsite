import 'package:eaudelux/firebase_options.dart';
import 'package:eaudelux/navigation.dart';
import 'package:eaudelux/utils/styles/themes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

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
      // home: const InventoryDashboard(),
      home: const RoleSelectionPage(),
    );
  }
}
