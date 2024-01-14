import 'package:flutter/material.dart';
import 'package:yummy_eats/app/landing_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LandingPage1(),
    );
  }
}
