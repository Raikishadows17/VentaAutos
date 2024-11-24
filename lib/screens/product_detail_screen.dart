import 'package:flutter/material.dart';
import 'package:storescars/providers/products.dart';
import 'package:provider/provider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_launch/flutter_launch.dart';
import 'package:url_launcher/url_launcher.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = 'Product-detail';
  ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)?.settings.arguments as String;
    final loadedProduct =
        Provider.of<Products>(context, listen: false).findById(productId);

    Widget image_carousel = Container(
      child: CarouselSlider(
        items: [
          Image.network(loadedProduct.imageUrl01, fit: BoxFit.cover),
          Image.network(loadedProduct.imageUrl02, fit: BoxFit.cover),
          Image.network(loadedProduct.imageUrl03, fit: BoxFit.cover),
        ],
        options: CarouselOptions(
          height: 300, // Altura del carrusel
          autoPlay: false, // Desactivar autoplay
          enlargeCenterPage: true, // Resaltar la imagen central
          viewportFraction: 1.0, // Una imagen visible a la vez
          autoPlayCurve: Curves.fastOutSlowIn,
          aspectRatio: 16 / 9,
          enableInfiniteScroll: true,
          pauseAutoPlayOnTouch: true,
        ),
      ),
    );
    void whatsappOpen() async {
      await FlutterLaunch.launchWhatsapp(
          phone: loadedProduct.whatsapp.toString(),
          message: "Que tal me interesa el Automovil ${loadedProduct.title}");
    }

    void _launchCaller(String number) async {
      final Uri url = Uri(
        scheme: 'tel',
        path: number.toString(),
      );
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      } else {
        throw "No se pudo realizar llamada";
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title),
      ),
      body: ListView(
        children: <Widget>[
          image_carousel,
          SizedBox(
            height: 10,
          ),
          Container(
            color: Colors.green,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.attach_money),
                Text(
                  loadedProduct.price,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            child: Text(
              'DESCRIPCIÓN',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            color: Colors.green,
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            width: double.infinity,
            child: Text(
              loadedProduct.description,
              textAlign: TextAlign.left,
              softWrap: true,
            ),
          ),
          Container(
            color: Colors.yellow,
            child: Row(
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
                ),
                Icon(Icons.airport_shuttle),
                Text("Kilometros: "),
                Text(loadedProduct.km.toString()),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            child: Text(
              'CONTACTO',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 25),
                ),
                IconButton(
                  icon: Icon(Icons.call),
                  color: Colors.green,
                  onPressed: () {
                    _launchCaller(loadedProduct.phone);
                  },
                ),
                Text('Telefono: '),
                Text(loadedProduct.phone),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: GestureDetector(
                      onTap: () {
                        whatsappOpen();
                      },
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.green[800],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          'WhatsApp',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
