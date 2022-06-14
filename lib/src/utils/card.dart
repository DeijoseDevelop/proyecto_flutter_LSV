import 'package:flutter/material.dart';

class CardUtils {
  String? nombre;
  String? apellido;
  int? cel;
  String? licencia;
  CardUtils({this.nombre, this.apellido, this.cel, this.licencia});

  static Card getCard(String nombre, String apellido, int cel, String licencia) {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.person, size: 40.0),
            title: Text(nombre),
            subtitle: Text(apellido),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.phone),
            title: const Text("Celular:"),
            subtitle: Text("$cel"),
          ),
          ListTile(
            leading: const Icon(Icons.badge),
            title: const Text("Licencia:"),
            subtitle: Text(licencia),
          ),
        ],
      ),
    );
  }
}
