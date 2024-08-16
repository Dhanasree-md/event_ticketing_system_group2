import 'package:flutter/material.dart';
import 'home_screen.dart';

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
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
          child: Image.asset('assets/images/logo.png'),
        ),
      ),
    );
  }
}
