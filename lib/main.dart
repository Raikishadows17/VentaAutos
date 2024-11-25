import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/products_overview_screen.dart';
import 'screens/product_detail_screen.dart';
import 'providers/products.dart';
import 'package:provider/provider.dart';
import 'screens/nosotros_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: Products(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'CarsShop',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.red, // Aplica el color rojo.
            foregroundColor:
                Colors.white, // Asegúrate de que el texto sea visible.
            elevation: 4,
          ),
        ),
        initialRoute: HomeScreen.routName,
        routes: {
          HomeScreen.routName: (ctx) => HomeScreen(),
          ProductsOverviewScreen.routeName: (ctx) => ProductsOverviewScreen(),
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
          NosotrosScreen.routeName: (ctx) => NosotrosScreen(),
        },
      ),
    );
  }
}
