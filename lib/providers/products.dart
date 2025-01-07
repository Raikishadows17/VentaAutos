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

  void addProduct(Product product) {
    final newProduct = Product(
        id: DateTime.now().toString(),
        title: product.title,
        description: product.description,
        km: product.km,
        price: product.price,
        phone: product.phone,
        whatsapp: product.whatsapp,
        imageUrl01: product.imageUrl01,
        imageUrl02: product.imageUrl02,
        imageUrl03: product.imageUrl03);
    _items.add(newProduct);
    //_items.insert(0, newProduct);
    notifyListeners();
  }

  void updateProduct(String id, Product newProduct) {
    final prodIndex = _items.indexWhere((prod) => prod.id == id);
    if (prodIndex >= 0) {
      _items[prodIndex] = newProduct;
      notifyListeners();
    } else {
      print("...");
    }
  }

  void deleteProducts(String id) {
    _items.removeWhere((prod) => prod.id == id);
    notifyListeners();
  }
}
