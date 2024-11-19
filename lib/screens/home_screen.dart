import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routName = 'Home-Screen';
  final background = Container(
    decoration: const BoxDecoration(
        image: DecorationImage(
      image: AssetImage('assets/images/back.jpg'),
      fit: BoxFit.cover,
    )),
  );

  final whiteOpacity = Container(
    color: Colors.white38,
  );

  final logo = Image.asset(
    'assets/images/logo.png',
    width: 300,
    height: 300,
  );

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          background,
          whiteOpacity,
          SingleChildScrollView(
            child: Container(
              height: deviceSize.height,
              width: deviceSize.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SafeArea(
                    child: Column(
                      children: <Widget>[
                        logo,
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Press me',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shadowColor: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
