import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:grocery_app/controllers/generate_products.dart';
import 'firebase_options.dart';
import 'app.dart';

Future<void> main() async {
  runApp(MyApp());
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);

// generateRandomProducts();
}

