import 'package:flutter/material.dart';
import 'package:flutter_launch/flutter_launch.dart';
import 'package:url_launcher/url_launcher.dart';

class NosotrosScreen extends StatelessWidget {
  static const routeName = 'Nosotros-screen';

  @override
  Widget build(BuildContext context) {
    Widget buildTitleText(String title) {
      return Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 10, 10),
        child: Text(
          title,
          style: const TextStyle(
              color: Colors.blueAccent,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
      );
    }

    Widget buildBodyText(String title) {
      return Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 5, 5),
        child: Text(
          title,
          style: const TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      );
    }

    void whatsAppOpen() async {
      await FlutterLaunch.launchWhatsapp(
          phone: '527531365473', message: 'Quiero anunciarme!!');
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Nosotros"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 200,
              width: double.infinity,
              child: Image.asset(
                'assets/images/backAnunciatelogo.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildTitleText('Conctato'),
                buildBodyText('Envianos un mail a: '),
                InkWell(
                  onTap: () {
                    launchUrl(
                        "mailto:<gvacerox11@gmail.com>?subject=Quiero Anunciarme"
                            as Uri);
                  },
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Gvacerox11@gmail.com',
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                buildBodyText('o un WhatsApp:'),
                GestureDetector(
                  onTap: () {
                    whatsAppOpen();
                  },
                  child: Container(
                    height: 40,
                    width: 5,
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
                buildBodyText(''),
                buildTitleText('INFO: '),
                buildBodyText('Desarrollador'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
