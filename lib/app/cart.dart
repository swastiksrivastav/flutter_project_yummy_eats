import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';
import 'package:yummy_eats/app/apna_dhaba.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      backgroundColor: Colors.lightBlue[800],
      // ignore: prefer_const_constructors
      body: Consumer<CartProvider>(
        builder: (context, cart, child) {
          return ListView.builder(
            itemCount: cart.uniqueItems.length,
            itemBuilder: (context, index) {
              final item = cart.uniqueItems[index];
              final quantity = cart.getQuantity(item);

              return ListTile(
                title: Text(item.name),
                subtitle: Text(
                  'Quantity: $quantity - Price: ${item.price * quantity}',
                ),
                // Add more details if needed
              );
            },
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Total Price: ${Provider.of<CartProvider>(context).calculateTotalPrice()}',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // Save order to Firestore
          await saveOrderToFirestore(
              context, Provider.of<CartProvider>(context, listen: false));
          // Clear the cart after saving the order
          Provider.of<CartProvider>(context, listen: false).clearCart();
        },
        child: Icon(Icons.check),
      ),
    );
  }

  Future<void> saveOrderToFirestore(
      BuildContext context, CartProvider cartProvider) async {
    CollectionReference orders =
        FirebaseFirestore.instance.collection('orders');

    // Build a map representing the order
    Map<String, dynamic> orderData = {
      'items': {},
      'totalPrice': cartProvider.calculateTotalPrice(),
      'timestamp': FieldValue.serverTimestamp(),
    };

    // Group items by their name and store quantity and price
    cartProvider.uniqueItems.forEach((item) {
      final itemName = item.name;
      final quantity = cartProvider.getQuantity(item);
      final price = item.price;

      // Check if the item already exists in the order
      if (orderData['items'][itemName] == null) {
        orderData['items'][itemName] = {'quantity': quantity, 'price': price};
      } else {
        // If the item exists, update the quantity
        orderData['items'][itemName]['quantity'] += quantity;
      }
    });

    // Add the order to the 'orders' collection
    await orders.add(orderData);

    // Clear the cart after saving the order
    cartProvider.clearCart();
  }
}
