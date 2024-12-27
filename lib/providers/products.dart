import 'package:flutter/material.dart';
import 'package:storescars/providers/product.dart';

class Products with ChangeNotifier {
  final List<Product> _items = [
    Product(
      id: 'a1',
      title: 'Sentra 2005',
      description: 'Muy bueno',
      km: 1000000,
      price: '98,000',
      imageUrl01:
          'https://upload.wikimedia.org/wikipedia/commons/5/58/2005_Nissan_Sentra_1.8L_Special_Edition%2C_rear_4.16.18.jpg',
      imageUrl02:
          'https://upload.wikimedia.org/wikipedia/commons/5/58/2005_Nissan_Sentra_1.8L_Special_Edition%2C_rear_4.16.18.jpg',
      imageUrl03:
          'https://upload.wikimedia.org/wikipedia/commons/5/58/2005_Nissan_Sentra_1.8L_Special_Edition%2C_rear_4.16.18.jpg',
      phone: '+52 753 136 5473',
      whatsapp: 527531365473,
    ),
    Product(
      id: 'a2',
      title: 'Altima 2011',
      description: 'Coool',
      km: 50000,
      price: '120,000',
      imageUrl01:
          'https://upload.wikimedia.org/wikipedia/commons/5/58/2005_Nissan_Sentra_1.8L_Special_Edition%2C_rear_4.16.18.jpg',
      imageUrl02:
          'https://upload.wikimedia.org/wikipedia/commons/5/58/2005_Nissan_Sentra_1.8L_Special_Edition%2C_rear_4.16.18.jpg',
      imageUrl03:
          'https://upload.wikimedia.org/wikipedia/commons/5/58/2005_Nissan_Sentra_1.8L_Special_Edition%2C_rear_4.16.18.jpg',
      phone: '+52 753 136 5473',
      whatsapp: 527531365473,
    ),
  ];

  List<Product> get items {
    return [..._items];
  }

  List<Product> get favoriteItems {
    return _items.where((prodItem) => prodItem.isFavorite).toList();
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }
}
