import 'package:cloud_firestore/cloud_firestore.dart';

class GroceryItem {
  final String id;
  final String name;
  final String category;
  final double price;
  final String description;
  final String imageUrl;
  final String farmerId;

  GroceryItem({
    required this.id,
    required this.name,
    required this.category,
    required this.price,
    required this.description,
    required this.imageUrl,
    required this.farmerId,
  });

  factory GroceryItem.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return GroceryItem(
      id: doc.id,
      name: data['name'],
      category: data['category'],
      price: data['price'],
      description: data['description'],
      imageUrl: data['imageUrl'],
      farmerId: data['farmerId'],
    );
  }
}


// var exclusiveOffers = [demoItems[0], demoItems[1]];

// var bestSelling = [demoItems[2], demoItems[3]];

// var groceries = [demoItems[4], demoItems[5]];


