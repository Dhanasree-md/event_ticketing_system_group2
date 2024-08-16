import 'package:flutter/material.dart';
import 'screens/start_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/product_screen.dart';
import 'screens/detail_screen.dart';
import 'screens/checkout_screen.dart';

void main() {
  runApp(MaterialApp(
    title: 'Event Ticketing App',
    theme: ThemeData(
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    initialRoute: '/',
    routes: {
      '/': (context) => StartScreen(),
      '/product': (context) => ProductScreen(),


      '/checkout': (context) => CheckoutScreen(),
    },
  ));
}
