import 'package:beermaker/beer_maker_homepage.dart';
import 'package:beermaker/etapefabrication.dart';
import 'package:beermaker/outilfabrication.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: BeerMakerHomePage(),
      routes: <String, WidgetBuilder>{
        "/route1": (BuildContext context) => BeerMakerHomePage(),
        "/route2": (BuildContext context) => EtapeFabrication(),
        "/route3": (BuildContext context) => OutilFabrication(),
      },
    );
  }
}
