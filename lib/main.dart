import 'package:flutter/material.dart';
import 'package:todoapp/features/home/screens/home_screen.dart';
import 'package:todoapp/navmap/nav_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: NavScreen(),
        ),
      ),
    );
  }
}
