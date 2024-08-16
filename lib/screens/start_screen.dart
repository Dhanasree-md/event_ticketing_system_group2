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
              MaterialPageRoute(builder: (context) => RegistrationScreen()),
            );
          },
          child: Image.asset('assets/images/logo.png'),
        ),
      ),
    );
  }
}
