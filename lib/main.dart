import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
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
      '/': (context) => HomeScreen(),
      '/product': (context) => ProductScreen(),


      '/checkout': (context) => CheckoutScreen(),
    },
  ));
}
