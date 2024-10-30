// home_screen.dart
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Welcome to My Website Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

