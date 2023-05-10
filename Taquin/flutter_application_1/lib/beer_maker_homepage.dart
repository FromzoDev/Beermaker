import 'dart:async';
import 'package:beermaker/strings.dart';
import 'package:flutter/material.dart';

class BeerMakerHomePage extends StatefulWidget {
  const BeerMakerHomePage({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<BeerMakerHomePage> {
  @override
  void initState() {
    super.initState();

    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => BeerMakerHomePageState())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Color.fromARGB(255, 245, 235, 103),
      child: Image.asset("assets/beermakerlogo3000.png"),
    );
  }
}

class BeerMakerHomePageState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.appBartitle),
      ),
      backgroundColor: Color.fromARGB(255, 175, 175, 175),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 2),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              height: 200,
              width: 650,
              child: ElevatedButton(
                  onPressed: (() => Navigator.pushNamed(context, "/route2")),
                  child: Text(
                    Strings.textButton1,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  )),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 2),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              height: 200,
              width: 650,
              child: ElevatedButton(
                  onPressed: (() => Navigator.pushNamed(context, "/route3")),
                  child: Text(
                    Strings.textButton2,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
