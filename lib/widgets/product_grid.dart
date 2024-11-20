import 'package:flutter/material.dart';
import 'package:storescars/widgets/product_item.dart';
import 'package:provider/provider.dart';
import 'package:storescars/providers/products.dart';

class ProductsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final products = productsData.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: products.length,
      itemBuilder: (ctx, i) => ProductItem(products[i].id, products[i].title,
          products[i].imageUrl01, products[i].price),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 16 / 9,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
    );
  }
}
