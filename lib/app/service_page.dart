import 'package:flutter/material.dart';
import 'package:yummy_eats/app/chefbook_homepage.dart';
import 'package:yummy_eats/app/delivery_homepage.dart';

class ServicePage extends StatefulWidget {
  const ServicePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ServicePageState createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
        appBar: AppBar(
          // ignore: prefer_const_constructors
          title: Text('Services'),
        ),
        backgroundColor: Colors.lightBlue[800],
        // ignore: prefer_const_constructors
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Builder(builder: (context) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => FoodDeliveryHomePage()));
                },
                child: Center(
                    child: Container(
                        width: 280,
                        height: 280,
                        child: Image.asset(
                          'assets/images/food_delivery_srvc.jpg',
                          fit: BoxFit.cover,
                        ))),
              );
            }),
            Builder(builder: (context) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ChefBookHomePage()));
                },
                child: Center(
                    child: Container(
                        width: 280,
                        height: 280,
                        child: Image.asset(
                          'assets/images/chef_book_srvc.jpg',
                          fit: BoxFit.cover,
                        ))),
              );
            })
          ],
        ));
  }
}
