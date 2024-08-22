import 'package:bank_app/base/bottom_nav.dart';
import 'package:bank_app/pages/payment_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Banking App',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xff0d0d0f),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const BottomNav(),

      routes: {
        '/send' : (context) => const PaymentPage(),
      },
    );
  }
}