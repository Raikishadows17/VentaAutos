import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:storescars/providers/products.dart';
import 'package:storescars/widgets/user_product_item.dart';
import 'package:storescars/widgets/app_drawer.dart';

class UserProductsScreen extends StatelessWidget {
  static const routeName = 'user-products-screen';

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("User Products"),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {},
          )
        ],
      ),
      drawer: AppDrawer(),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: ListView.builder(
          itemCount: productsData.items.length,
          itemBuilder: (_, i) => Column(
            children: [
              UserProductItem(
                productsData.items[i].title,
                productsData.items[i].imageUrl01,
              ),
              Divider(
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
