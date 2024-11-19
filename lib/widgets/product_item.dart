import 'package:flutter/material.dart';
import 'package:storescars/screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl01;
  final String price;

  const ProductItem(this.id, this.title, this.imageUrl01, this.price,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              ProductDetailScreen.routeName,
              arguments: id,
            );
          },
          child: Image.network(
            imageUrl01,
            fit: BoxFit.cover,
          ),
        ),
        footer: Container(
          height: 45,
          child: GridTileBar(
            backgroundColor: Colors.black54,
            leading: IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {},
            ),
            title: Text(
              title,
              style: TextStyle(fontSize: 15),
              softWrap: true,
              overflow: TextOverflow.fade,
              textAlign: TextAlign.center,
            ),
            trailing: Row(
              children: <Widget>[
                Icon(Icons.attach_money),
                Text(
                  price,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
