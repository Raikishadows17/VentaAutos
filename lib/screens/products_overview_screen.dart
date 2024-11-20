import 'package:flutter/material.dart';
import 'package:storescars/models/product.dart';
import 'package:storescars/widgets/product_grid.dart';

class ProductsOverviewScreen extends StatelessWidget {
  ProductsOverviewScreen({super.key});

  static const routeName = 'Products-Overview-Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products Overview'),
      ),
      body: ProductsGrid(),
    );
  }
}
