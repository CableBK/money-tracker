import 'package:flutter/material.dart';
import 'package:money_tracker/pages/home_screen.dart';

void main() {
  runApp(const MoneyApp());
}

class MoneyApp extends StatelessWidget {
  const MoneyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Money Tracker by CableBK',
      home: HomeScreen(),
    );
  }
}
