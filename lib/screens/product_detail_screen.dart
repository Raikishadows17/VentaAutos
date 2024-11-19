import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = 'Product-detail';
  ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Detail'),
      ),
      body: Center(
        child: Text('Product Detail'),
      ),
    );
  }
}
