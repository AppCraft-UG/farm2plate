class CategoryItem {
  final int? id;
  final String name;
  final String imagePath;

  CategoryItem({this.id, required this.name, required this.imagePath});
}

var categoryItemsDemo = [
  CategoryItem(
    name: "Fresh Fruits & Vegetables",
    imagePath: "assets/images/categories_images/fruit.png",
  ),
  CategoryItem(
    name: "Grains",
    imagePath: "assets/images/rise.png",
  ),

  CategoryItem(
    name: "Oils and Essences",
    imagePath: "assets/images/categories_images/oil.png",
  ),
  CategoryItem(
    name: "Meat & Fish",
    imagePath: "assets/images/categories_images/meat.png",
  ),
  CategoryItem(
    name: "Spices",
    imagePath: "assets/images/pulses.png",
  ),
  CategoryItem(
    name: "Bakery",
    imagePath: "assets/images/categories_images/bakery.png",
  ),
  CategoryItem(
    name: "Dairy & Eggs",
    imagePath: "assets/images/categories_images/dairy.png",
  ),
  CategoryItem(
    name: "Beverages",
    imagePath: "assets/images/categories_images/beverages.png",
  ),
  
];
