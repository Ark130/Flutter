import 'package:flutter/material.dart';
import 'package:my_first_app_flutter/screens/buttons_screen.dart';
import 'package:my_first_app_flutter/screens/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/buttons': (context) => const ButtonsScreen(),
      },
      debugShowCheckedModeBanner: false,
      home: HomeScreen()
    );
  }
}