import 'package:flutter/material.dart';
import 'package:storescars/screens/products_overview_screen.dart';
import 'package:storescars/screens/nosotros_screen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            AppBar(
              title: Text("Drawer"),
              automaticallyImplyLeading: false,
            ),
            Divider(),
            Container(
              color: Colors.white,
              child: ListTile(
                leading: Icon(Icons.shop),
                title: Text('Autos'),
                onTap: () {
                  Navigator.of(context)
                      .pushNamed(ProductsOverviewScreen.routeName);
                },
              ),
            ),
            Divider(),
            Container(
              color: Colors.white,
              child: ListTile(
                leading: Icon(Icons.perm_identity),
                title: Text('Nosotros'),
                onTap: () {
                  Navigator.of(context).pushNamed(NosotrosScreen.routeName);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
