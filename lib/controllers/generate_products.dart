import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;

List<String> _productNames = [
  'Apples',
  'Bananas',
  'Oranges',
  'Pineapples',
  'Mangoes',
  'Papayas',
  'Grapes',
  'Strawberries',
  'Raspberries',
  'Blueberries',
  'Kiwi',
  'Watermelon',
  'Honeydew',
  'Cantaloupe',
  'Peaches',
  'Plums',
  'Nectarines',
];

List<String> _categories = [
  'Fruits',
  'Vegetables',
  'Grains',
  'Dairy',
  'Meat',
  'Seafood',
  'Beverages',
  'Snacks',
];

String _getRandomItem(List<String> list) {
  final _random = Random();
  int index = _random.nextInt(list.length);
  return list[index];
}

Future<void> generateRandomProducts() async {
  final int numberOfProducts = 10;

  for (int i = 0; i < numberOfProducts; i++) {
    final String productName = _getRandomItem(_productNames);
    final String category = _getRandomItem(_categories);
    final double price = double.parse((Random().nextInt(10000) / 100).toStringAsFixed(2));
    final String description = 'This is a description for $productName';
    final String imageUrl = 'https://picsum.photos/200/300';
    final String farmerId = 'RCNydnzOcki59Hgdyc4o';

    await _firestore.collection('products').add({
      'productName': productName,
      'category': category,
      'price': price,
      'description': description,
      'imageUrl': imageUrl,
      'farmerId': farmerId,
    });
  }

  print('Random products generated and added to Firestore');
}
