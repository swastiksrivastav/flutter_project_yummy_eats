import 'dart:typed_data';
import 'package:flutter/services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  static Future<void> addRestaurantsData() async {
    try {
      // Add restaurant 1 with image from URL
      await FirebaseFirestore.instance.collection('restaurants').add({
        'name': 'Apna Dhaba',
        'image_url': await _uploadImageFromUrl(
            'gs://yummy-eats-c9471.appspot.com/images/apna_dhaba.jpg'),
        'dishes': ['Punjabi Chole Bhature', 'Chole Kulche', 'Kadhai Paneer'],
      });

      // Add restaurant 2 with image from URL
      await FirebaseFirestore.instance.collection('restaurants').add({
        'name': 'Restaurant Food Hub',
        'image_url': await _uploadImageFromUrl(
            'gs://yummy-eats-c9471.appspot.com/images/food_hub.jpg'),
        'dishes': ['Idli Vada', 'Dosa', 'Coffee'],
      });

      print('Restaurants data added successfully!');
    } catch (e) {
      print('Error adding restaurants data: $e');
    }
  }

  static Future<String> _uploadImageFromUrl(String imageUrl) async {
    try {
      // Use the provided imageUrl directly
      return imageUrl;
    } catch (e) {
      print('Error uploading image from URL: $e');
      return ''; // Return an empty string or null if there's an error
    }
  }

  static Future<List<Map<String, dynamic>>> searchRestaurants(
      String query) async {
    try {
      List<Map<String, dynamic>> searchResults = [];

      QuerySnapshot querySnapshot = await FirebaseFirestore.instance
          .collection('restaurants')
          .where('name', isGreaterThanOrEqualTo: query)
          .get();

      for (QueryDocumentSnapshot doc in querySnapshot.docs) {
        Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
        searchResults.add(data);
      }

      return searchResults;
    } catch (e) {
      print('Error searching restaurants: $e');
      return [];
    }
  }
}
