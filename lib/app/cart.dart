import 'package:flutter/material.dart';
import 'package:yummy_eats/app/delivery_homepage.dart';
import 'package:yummy_eats/app/favourites.dart';
import 'package:yummy_eats/app/profile.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int _currind = 2;
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
        appBar: AppBar(
          title: Text('Cart'),
        ),
        backgroundColor: Colors.lightBlue[800],
        body: Text('This is the Cart page'),
        bottomNavigationBar: BottomNavigationBar(
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            // ignore: prefer_const_constructors
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            // ignore: prefer_const_constructors
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorites',
            ),
            // ignore: prefer_const_constructors
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Favorites',
            ),
            // ignore: prefer_const_constructors
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.blueGrey,
          currentIndex: _currind,
          onTap: (index) {
            setState(() {
              _currind = index;
            });
            switch (index) {
              case 0:
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        // ignore: prefer_const_constructors
                        builder: (context) => FoodDeliveryHomePage()));
                break;
              case 1:
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FavouritePage()));
                break;
              case 2:
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CartPage()));
                break;
              case 3:
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfilePage()));
                break;
            }
          },
        ));
  }
}
