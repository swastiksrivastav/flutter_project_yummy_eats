import 'package:flutter/material.dart';

class ChefBookHomePage extends StatefulWidget {
  const ChefBookHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ChefBookHomePage createState() => _ChefBookHomePage();
}

class _ChefBookHomePage extends State<ChefBookHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text('Home'),
      ),
      // ignore: prefer_const_constructors
      body: Center(child: Text('This is the Chef Booking Home Page')),
    );
  }
}
