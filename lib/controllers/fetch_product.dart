import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:grocery_app/models/grocery1_item.dart';
import 'package:grocery_app/models/grocery_item.dart';

Future<List<GroceryItem>> fetchAllProducts() async {
  QuerySnapshot<Map<String, dynamic>> querySnapshot =
      await FirebaseFirestore.instance.collection('products').get();

  List<GroceryItem> groceryItems = querySnapshot.docs.map((doc) {
    Map<String, dynamic> data = doc.data();
    return GroceryItem(
      name: data['name'],
      category: data['category'],
      description: data['description'],
      price: data['price'].toDouble(),
      imageUrl: data['imageUrl'],
      id: doc.id,
      farmerId: data['farmerId'],
    );
  }).toList();

  return groceryItems;
}


// var groceryItems = fetchAllProducts();

// var exclusiveOffers = <List<GroceryItem>> [];

// var bestSelling = [];

// var groceries = [];