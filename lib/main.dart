import 'package:flutter/material.dart';
import 'screens/start_screen.dart';
import 'screens/product_screen.dart';
import 'screens/checkout_screen.dart';
import 'screens/thankyou_screen.dart';
import 'screens/login_screen.dart';
import 'screens/registration_screen.dart';
import 'screens/home_screen.dart';
import 'models/event.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Event Ticketing App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      onGenerateRoute: (settings) {
        if (settings.name == '/checkout') {
          final args = settings.arguments as Map<String, dynamic>;
          return MaterialPageRoute(
            builder: (context) {
              return CheckoutScreen(event: args['event'], quantity: args['quantity']);
            },
          );
        }
        return null;
      },
      routes: {
        '/': (context) => StartScreen(),
        '/home':(context)=>HomeScreen(),
        '/product': (context) => ProductScreen(),
        '/thankyou': (context) => ThankYouScreen(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegistrationScreen(),
      },
    );
  }
}
