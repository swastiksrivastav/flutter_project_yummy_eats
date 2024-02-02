import 'package:flutter/material.dart';

import 'package:yummy_eats/app/delivery_homepage.dart';
import 'package:yummy_eats/app/profile.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({super.key});

  @override
  _FavouritePageState createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  int _currind = 1;
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
        appBar: AppBar(
          // ignore: prefer_const_constructors
          title: Text('Favourites'),
        ),
        backgroundColor: Colors.lightBlue[800],
        // ignore: prefer_const_constructors
        body: Text('This is the favourites page'),
        bottomNavigationBar: BottomNavigationBar(
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            // ignore: prefer_const_constructors
            BottomNavigationBarItem(
              // ignore: prefer_const_constructors
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            // ignore: prefer_const_constructors
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favorites',
            ),
            // ignore: prefer_const_constructors

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
                    MaterialPageRoute(builder: (context) => ProfilePage()));
                break;
            }
          },
        ));
  }
}
