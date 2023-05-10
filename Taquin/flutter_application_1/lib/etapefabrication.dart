import 'package:beermaker/strings.dart';
import 'package:flutter/material.dart';

class EtapeFabrication extends StatefulWidget {
  const EtapeFabrication({super.key});

  @override
  State<EtapeFabrication> createState() => _EtapeFabricationState();
}

class _EtapeFabricationState extends State<EtapeFabrication> {
  int count = 0;

  @override
  void initState() {
    super.initState();
  }

  var titreStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.w600);

  var textStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.w200);

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text(
              Strings.appBartitle,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            )),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(5),
                  child: _titre(),
                ),
                _info(),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 2),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  height: 100,
                  width: 370,
                  child: ElevatedButton(
                      onPressed: (() =>
                          Navigator.pushNamed(context, "/route3")),
                      child: Text(
                        Strings.textButton2,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w700),
                      )),
                ),
              ],
            ),
          ),
        ));
  }

  _titre() {
    if (count == 0) {
      return Text(
        Strings.titre0,
        style: titreStyle,
      );
    } else if (count == 1) {
      return Text(
        '1. ' + Strings.titre1,
        style: titreStyle,
      );
    } else if (count == 2) {
      return Text(
        '2. ' + Strings.titre2,
        style: titreStyle,
      );
    } else if (count == 3) {
      return Text(
        '3. ' + Strings.titre3,
        style: titreStyle,
      );
    } else if (count == 4) {
      return Text(
        '4. ' + Strings.titre4,
        style: titreStyle,
      );
    } else if (count == 5) {
      return Text(
        '5. ' + Strings.titre5,
        style: titreStyle,
      );
    } else if (count == 6) {
      return Text(
        '6. ' + Strings.titre6,
        style: titreStyle,
      );
    } else {
      return Text(
        '7. ' + Strings.titre7,
        style: titreStyle,
      );
    }
  }

  _text() {
    if (count == 0) {
      return Text(
        Strings.texte0,
        style: textStyle,
      );
    } else if (count == 1) {
      return Text(
        Strings.texte1,
        style: textStyle,
      );
    } else if (count == 2) {
      return Text(
        Strings.texte2,
        style: textStyle,
      );
    } else if (count == 3) {
      return Text(
        Strings.texte3,
        style: textStyle,
      );
    } else if (count == 4) {
      return Text(
        Strings.texte4,
        style: textStyle,
      );
    } else if (count == 5) {
      return Text(
        Strings.texte5,
        style: textStyle,
      );
    } else if (count == 6) {
      return Text(
        Strings.texte6,
        style: textStyle,
      );
    } else {
      return Text(
        Strings.texte7,
        style: textStyle,
      );
    }
  }

  _beforBtn() {
    if (count == 0) {
      return Container(
        width: 74,
      );
    } else {
      return TextButton(
          onPressed: (() {
            setState(() {
              count--;
            });
          }),
          child: Icon(
            Icons.navigate_before,
            size: 59,
          ));
    }
  }

  _nextBtn() {
    if (count == 7) {
      return Container(
        width: 74,
      );
    } else {
      return TextButton(
          onPressed: (() {
            setState(() {
              count++;
            });
          }),
          child: Icon(
            Icons.navigate_next,
            size: 59,
          ));
    }
  }

  Widget _textContainer() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          height: 450,
          width: 350,
          color: Colors.red,
          child: SingleChildScrollView(child: _text()),
        )
      ],
    );
  }

  Widget _info() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [_beforBtn(), _textContainer(), _nextBtn()],
    );
  }
}
