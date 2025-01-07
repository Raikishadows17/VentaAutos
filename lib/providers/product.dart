import 'package:flutter/foundation.dart';

class Product with ChangeNotifier {
  final String? id;
  final String title;
  final String description;
  final int km;
  final String price;
  final String imageUrl01;
  final String imageUrl02;
  final String imageUrl03;
  final String phone;
  final int whatsapp;
  bool isFavorite;

  Product(
      {this.id,
      required this.title,
      required this.description,
      required this.km,
      required this.price,
      required this.imageUrl01,
      required this.imageUrl02,
      required this.imageUrl03,
      required this.phone,
      required this.whatsapp,
      this.isFavorite = false});

  void toggleFavoriteStatus() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
