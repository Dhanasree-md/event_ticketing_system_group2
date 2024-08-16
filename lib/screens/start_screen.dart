import 'package:event_ticketing_system_group2/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'registration_screen.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            // Replace the current screen (StartScreen) with HomeScreen
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
            );
          },
          child: Image.asset('assets/images/logo.png'),
        ),
      ),
    );
  }
}
