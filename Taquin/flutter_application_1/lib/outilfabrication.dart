import 'package:flutter/material.dart';

class OutilFabrication extends StatefulWidget {
  const OutilFabrication({super.key});

  @override
  State<OutilFabrication> createState() => _OutilFabricationState();
}

class _OutilFabricationState extends State<OutilFabrication> {
  final _formKey = GlobalKey<FormState>();
  String _volumeBiere = "";
  String _degreAlcool = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Outils de fabrication',
              style: TextStyle(fontWeight: FontWeight.bold)),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
          children: <Widget>[_form()],
        )));
  }

  Widget _form() {
    return Container(
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text("numéro :"),
            TextFormField(
              validator: (valeur) {
                if (valeur == null || valeur.isEmpty) {
                  return 'Entrer le degre voulu';
                } else {
                  _degreAlcool = valeur;
                }
              },
            ),
            const Text("L"),
            TextFormField(
              validator: (valeur) {
                if (valeur == null || valeur.isEmpty) {
                  return 'Entrer le volume voulu';
                } else {
                  _volumeBiere = valeur;
                }
              },
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text(
                            //"valeur saisie 1 = $_valeursaisie \n valeur saisie 2 = $_valeursaisie1"
                            "")));
                  }
                },
                child: const Text("submit"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
