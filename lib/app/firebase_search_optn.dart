// import 'dart:typed_data';
// import 'package:flutter/services.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_storage/firebase_storage.dart';

// class FirestoreService {
//   static Future<void> addRestaurantsData() async {
//     try {
//       // Add restaurant 1
//       await FirebaseFirestore.instance.collection('restaurants').add({
//         'name': 'Apna Dhaba',
//         'image_url': await _uploadImage('apna_dhaba.jpg'),
//         'dishes': ['Punjabi Chole Bhature', 'Chole Kulche', 'Kadhai Paneer'],
//       });

//       // Add restaurant 2
//       await FirebaseFirestore.instance.collection('restaurants').add({
//         'name': 'Food Hub',
//         'image_url': await _uploadImage('food_hub.jpg'),
//         'dishes': ['Idli Vada', 'Dosa'],
//       });

//       print('Restaurants data added successfully!');
//     } catch (e) {
//       print('Error adding restaurants data: $e');
//     }
//   }

//   static Future<String> _uploadImage(String imageName) async {
//     try {
//       // Load image from assets
//       ByteData data = await rootBundle.load('assets/images/$imageName');
//       List<int> bytes = data.buffer.asUint8List();

//       // Upload the loaded image to Firebase Storage
//       String imageUrl =
//           await uploadBytesToFirebaseStorage(bytes, 'restaurants/$imageName');

//       return imageUrl;
//     } catch (e) {
//       print('Error uploading image: $e');
//       return ''; // Return an empty string or null if there's an error
//     }
//   }

//   static Future<String> uploadBytesToFirebaseStorage(
//       List<int> bytes, String path) async {
//     try {
//       Reference firebaseStorageRef = FirebaseStorage.instance.ref().child(path);
//       await firebaseStorageRef.putData(Uint8List.fromList(bytes));

//       // Return the URL of the uploaded image
//       return await firebaseStorageRef.getDownloadURL();
//     } catch (e) {
//       print('Error uploading image to Firebase Storage: $e');
//       return ''; // Return an empty string or null if there's an error
//     }
//   }

//   static Future<List<Map<String, dynamic>>> searchRestaurants(
//       String query) async {
//     try {
//       List<Map<String, dynamic>> searchResults = [];

//       QuerySnapshot querySnapshot = await FirebaseFirestore.instance
//           .collection('restaurants')
//           .where('name', isGreaterThanOrEqualTo: query)
//           .get();

//       for (QueryDocumentSnapshot doc in querySnapshot.docs) {
//         Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
//         searchResults.add(data);
//       }

//       return searchResults;
//     } catch (e) {
//       print('Error searching restaurants: $e');
//       return [];
//     }
//   }
// }
