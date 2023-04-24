import 'package:grocery_app/models/grocery_item.dart';


// class GroceryItem {
//   final int? id;
//   final String name;
//   final String description;
//   final double price;
//   final String imageUrl;

//   GroceryItem({
//     this.id,
//     required this.name,
//     required this.description,
//     required this.price,
//     required this.imageUrl,
//   });
// }

var demoItems = [
  GroceryItem(
      id: "1",
      name: "Organic Bananas",
      description: "10pcs per bunch",
      category: "fruits",
      price: 4.99,
      imageUrl: "assets/images/grocery_images/banana.png",
      farmerId: "farmerId"),
      
  GroceryItem(
      id: "2",
      name: "Applew",
      description: "Fresh apples from the farm",
      category: "fruits",
      price: 4.99,
      imageUrl: "assets/images/grocery_images/apple.png",
      farmerId: "farmerId"),
  GroceryItem(
      id: "3",
      name: "Bell Pepper Red",
      description: "Bell Peppers to make you go loco",
      category: "peppers",
      price: 4.99,
      imageUrl: "assets/images/grocery_images/pepper.png",
      farmerId: "farmerId"
      ),
  GroceryItem(
      id: "4",
      name: "Ginger",
      description: "Kakaduro ankasa",
      category: "spices",
      price: 4.99,
      imageUrl: "assets/images/grocery_images/ginger.png",
      farmerId: "farmerId"),
  GroceryItem(
      id: "5",
      name: "Meat",
      description: "1kg of the finest cow meat",
      category: "meat",
      price: 4.99,
      imageUrl: "assets/images/grocery_images/beef.png",
      farmerId: "farmerId"),
  GroceryItem(
      id: "6",
      name: "Chicken",
      description: "Full Chicken, Fresh Kill",
      category: "meat",
      price: 4.99,
      imageUrl: "assets/images/grocery_images/chicken.png",
      farmerId: "farmerId"),
];

var exclusiveOffers = [demoItems[0], demoItems[1]];

var bestSelling = [demoItems[2], demoItems[3]];

var groceries = [demoItems[4], demoItems[5]];

var beverages = [
  GroceryItem(
      id: "7",
      name: "Beef",
      description: "1kg of the best Beef",
      category: "meat",
      price: 1.99,
      farmerId: "farmerId",
      imageUrl: "assets/images/beverages_images/diet_coke.png"),
  GroceryItem(
      id: "8",
      name: "Ribs",
      description: "1kg of the finest Ribs",
      category: "meat",
      price: 1.50,
      farmerId: "farmerId",
      imageUrl: "assets/images/beverages_images/sprite.png"),
  GroceryItem(
      id: "8",
      name: "Tripe",
      description: "1kg of the best Tripe",
      category: "meat",
      price: 15.99,
      farmerId: "farmerId",
      imageUrl: "assets/images/beverages_images/apple_and_grape_juice.png"),
  GroceryItem(
      id: "9",
      name: "Full Chicken",
      description: "Full Chicken",
      category: "meat",
      price: 1.50,
      farmerId: "farmerId",
      imageUrl: "assets/images/beverages_images/orange_juice.png"),
  GroceryItem(
      id: "10",
      name: "Lamb Chops",
      description: "2kg of the best Lamb Chops",
      category: "meat",
      price: 4.99,
      farmerId: "farmerId",
      imageUrl: "assets/images/beverages_images/coca_cola.png"),
  GroceryItem(
      id: "11",
      name: "Goat Meat",
      description: "1kg of our finest Goat Meat, fresh kill only!",
      category: "meat",
      price: 4.99,
      farmerId: "farmerId",
      imageUrl: "assets/images/beverages_images/pepsi.png"),
];
