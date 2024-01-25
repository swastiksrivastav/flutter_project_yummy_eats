import 'package:flutter/material.dart';
import 'package:yummy_eats/app/cart.dart';
import 'package:yummy_eats/app/favourites.dart';
import 'package:yummy_eats/app/firebase_search_optn.dart';
import 'package:yummy_eats/app/profile.dart';

class FoodDeliveryHomePage extends StatefulWidget {
  const FoodDeliveryHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FoodDeliveryHomePageState createState() => _FoodDeliveryHomePageState();
}

class _FoodDeliveryHomePageState extends State<FoodDeliveryHomePage> {
  int _currind = 0;
  final TextEditingController _searchController = TextEditingController();
  List<Map<String, dynamic>> searchResults = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // ignore: prefer_const_constructors
          title: Center(
              // ignore: prefer_const_constructors
              child: Text(
            'Home',
            // ignore: prefer_const_constructors
            style: TextStyle(fontFamily: 'Font1', fontSize: 40),
          )),
        ),
        backgroundColor: Color.fromARGB(255, 3, 46, 106),
        // ignore: prefer_const_constructors
        body: Stack(children: [
          SingleChildScrollView(
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _searchController,
                    onChanged: (query) {
                      // Call a function to update search results based on the query
                      //updateSearchResults(query);
                    },
                    // ignore: prefer_const_constructors
                    decoration: InputDecoration(
                        // ignore: prefer_const_constructors
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Search Restaurants',
                        // ignore: prefer_const_constructors
                        prefixIcon: Icon(Icons.search),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),

                            // ignore: prefer_const_constructors
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 236, 209, 4))),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),

                            // ignore: prefer_const_constructors
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 236, 209, 4)))),
                  ),
                ),
                // ignore: prefer_const_constructors
                Text(
                  'Popular Restaurants',
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontFamily: 'Font1', color: Colors.white, fontSize: 30),
                  textAlign: TextAlign.left,
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  height: 30,
                ),
                // ignore: sized_box_for_whitespace
                Container(
                  height: 200,
                  // ignore: prefer_const_constructors

                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 130,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color: Color.fromARGB(255, 236, 209, 4),
                                  width: 2)),
                          child: Stack(children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(18),
                              child: Image.asset(
                                'assets/images/apna_dhaba.jpg',
                                fit: BoxFit.cover,
                                height: double.infinity,
                              ),
                            ),
                            // ignore: prefer_const_constructors
                            Positioned(
                              top: 150,
                              left: 8,
                              // ignore: prefer_const_constructors
                              child: Center(
                                // ignore: prefer_const_constructors
                                child: Text(
                                  'Apna Dhaba',
                                  // ignore: prefer_const_constructors
                                  style: TextStyle(
                                      fontFamily: 'Font1',
                                      color: Colors.white,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                          ]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 130,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                                color: Color.fromARGB(255, 236, 209, 4),
                                width: 2),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Stack(children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(18),
                              child: Image.asset(
                                'assets/images/mini_punjab.jpg',
                                fit: BoxFit.cover,
                                height: double.infinity,
                              ),
                            ),
                            // ignore: prefer_const_constructors
                            Positioned(
                              top: 150,
                              left: 10,
                              // ignore: prefer_const_constructors
                              child: Center(
                                // ignore: prefer_const_constructors
                                child: Text(
                                  'Mini Punjab',
                                  // ignore: prefer_const_constructors
                                  style: TextStyle(
                                      fontFamily: 'Font1',
                                      color: Colors.white,
                                      fontSize: 20),
                                ),
                              ),
                            ),
                          ]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            width: 130,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: Color.fromARGB(255, 236, 209, 4),
                                    width: 2),
                                borderRadius: BorderRadius.circular(20)),
                            child: Stack(children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(18),
                                child: Image.asset(
                                  'assets/images/food_hub.jpg',
                                  fit: BoxFit.cover,
                                  height: double.infinity,
                                ),
                              ),
                              // ignore: prefer_const_constructors
                              Positioned(
                                top: 150,
                                left: 20,
                                // ignore: prefer_const_constructors
                                child: Center(
                                  // ignore: prefer_const_constructors
                                  child: Text(
                                    'Food Hub',
                                    // ignore: prefer_const_constructors
                                    style: TextStyle(
                                        fontFamily: 'Font1',
                                        color: Colors.white,
                                        fontSize: 20),
                                  ),
                                ),
                              ),
                            ])),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            width: 130,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: Color.fromARGB(255, 236, 209, 4),
                                    width: 2),
                                borderRadius: BorderRadius.circular(20)),
                            child: Stack(children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(18),
                                child: Image.asset(
                                  'assets/images/sweet_shop.png',
                                  fit: BoxFit.cover,
                                  height: double.infinity,
                                ),
                              ),
                              // ignore: prefer_const_constructors
                              Positioned(
                                top: 150,
                                left: 11,
                                // ignore: prefer_const_constructors
                                child: Center(
                                  // ignore: prefer_const_constructors
                                  child: Text(
                                    'Sweet Shop',
                                    // ignore: prefer_const_constructors
                                    style: TextStyle(
                                        fontFamily: 'Font1',
                                        color: Colors.white,
                                        fontSize: 20),
                                  ),
                                ),
                              ),
                            ])),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            width: 130,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: Color.fromARGB(255, 236, 209, 4),
                                    width: 2),
                                borderRadius: BorderRadius.circular(20)),
                            child: Stack(children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(18),
                                child: Image.asset(
                                  'assets/images/cake_shop.jpg',
                                  fit: BoxFit.cover,
                                  height: double.infinity,
                                ),
                              ),
                              // ignore: prefer_const_constructors
                              Positioned(
                                top: 150,
                                left: 16,
                                // ignore: prefer_const_constructors
                                child: Center(
                                  // ignore: prefer_const_constructors
                                  child: Text(
                                    'Cake Shop',
                                    // ignore: prefer_const_constructors
                                    style: TextStyle(
                                        fontFamily: 'Font1',
                                        color: Colors.white,
                                        fontSize: 20),
                                  ),
                                ),
                              ),
                            ])),
                      ),
                    ],
                  ),
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  height: 30,
                ),
                // ignore: prefer_const_constructors
                Text(
                  'Popular Cuisines',
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontFamily: 'Font1', fontSize: 40, color: Colors.white),
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 130,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 130,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 130,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 130,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 130,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ),
                    ],
                  ),
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 250,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      Container(
                        width: double.infinity,
                        height: 200,
                        // ignore: prefer_const_constructors
                        decoration: BoxDecoration(
                            color: Colors.black,
                            // ignore: prefer_const_constructors
                            borderRadius: BorderRadius.only(
                                // ignore: prefer_const_constructors
                                topLeft: Radius.circular(20),
                                // ignore: prefer_const_constructors
                                topRight: Radius.circular(20))),
                        child: ClipRRect(
                          // ignore: prefer_const_constructors
                          borderRadius: BorderRadius.only(
                              // ignore: prefer_const_constructors
                              topLeft: Radius.circular(20),
                              // ignore: prefer_const_constructors
                              topRight: Radius.circular(20)),
                          child: Image.asset(
                            'assets/images/apna_dhaba.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      // ignore: prefer_const_constructors
                      Positioned(
                        top: 210,
                        left: 6,
                        // ignore: prefer_const_constructors
                        child: Text(
                          'Apna Dhaba',
                          // ignore: prefer_const_constructors
                          style: TextStyle(fontFamily: 'Font1', fontSize: 18),
                        ),
                      ),
                      // ignore: prefer_const_constructors
                      Positioned(
                        top: 210,
                        left: 118,
                        // ignore: prefer_const_constructors
                        child: Text(
                          'North Indian',
                          // ignore: prefer_const_constructors
                          style: TextStyle(fontFamily: 'Font1', fontSize: 18),
                        ),
                      ),
                      // ignore: prefer_const_constructors
                      Positioned(
                          top: 215,
                          left: 233,
                          // ignore: prefer_const_constructors
                          child: Icon(
                            Icons.access_time,
                            size: 18,
                          )),
                      // ignore: prefer_const_constructors
                      Positioned(
                          top: 210,
                          left: 255,
                          // ignore: prefer_const_constructors
                          child: Text(
                            '20-25 min',
                            style: TextStyle(fontFamily: 'Font1', fontSize: 18),
                          )),
                    ],
                  ),
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 250,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      Container(
                        width: double.infinity,
                        height: 200,
                        // ignore: prefer_const_constructors
                        decoration: BoxDecoration(
                            color: Colors.black,
                            // ignore: prefer_const_constructors
                            borderRadius: BorderRadius.only(
                              // ignore: prefer_const_constructors
                              topLeft: Radius.circular(20),
                              // ignore: prefer_const_constructors
                              topRight: Radius.circular(20),
                            )),
                        child: ClipRRect(
                          // ignore: prefer_const_constructors
                          borderRadius: BorderRadius.only(
                              // ignore: prefer_const_constructors
                              topLeft: Radius.circular(20),
                              // ignore: prefer_const_constructors
                              topRight: Radius.circular(20)),
                          child: Image.asset(
                            'assets/images/mini_punjab.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      // ignore: prefer_const_constructors
                      Positioned(
                        top: 210,
                        left: 6,
                        // ignore: prefer_const_constructors
                        child: Text(
                          'Mini Punjab',
                          // ignore: prefer_const_constructors
                          style: TextStyle(fontFamily: 'Font1', fontSize: 18),
                        ),
                      ),
                      // ignore: prefer_const_constructors
                      Positioned(
                        top: 210,
                        left: 118,
                        // ignore: prefer_const_constructors
                        child: Text(
                          'North Indian',
                          // ignore: prefer_const_constructors
                          style: TextStyle(fontFamily: 'Font1', fontSize: 18),
                        ),
                      ),
                      // ignore: prefer_const_constructors
                      Positioned(
                          top: 215,
                          left: 233,
                          // ignore: prefer_const_constructors
                          child: Icon(
                            Icons.access_time,
                            size: 18,
                          )),
                      // ignore: prefer_const_constructors
                      Positioned(
                          top: 210,
                          left: 255,
                          // ignore: prefer_const_constructors
                          child: Text(
                            '30-35 min',
                            // ignore: prefer_const_constructors
                            style: TextStyle(fontFamily: 'Font1', fontSize: 18),
                          ))
                    ],
                  ),
                ),
                // ignore: sized_box_for_whitespace

                // ignore: prefer_const_constructors
                SizedBox(
                  height: 20,
                ),
                if (searchResults.isNotEmpty)
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      color: Colors.white
                          .withOpacity(0.9), // Overlay background color
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: ListView.builder(
                              itemCount: searchResults.length,
                              itemBuilder: (context, index) {
                                return ListTile(
                                  title: Text(searchResults[index]['name']),
                                  leading: Image.network(
                                    searchResults[index]['image_url'],
                                    width: 50.0,
                                    height: 50.0,
                                    fit: BoxFit.cover,
                                  ),
                                  // Add more details as needed
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ]),
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

  // void updateSearchResults(String query) async {
  //   // Call methods from FirestoreService for searching
  //   List<Map<String, dynamic>> results =
  //       await FirestoreService.searchRestaurants(query);

  //   setState(() {
  //     // Update searchResults with the new results
  //     searchResults = results;
  //   });
  // }
}
