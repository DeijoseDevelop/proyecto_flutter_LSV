import 'package:final_project_of_mobile/src/entities/carro.dart';
import 'package:final_project_of_mobile/src/entities/servicio.dart';
import 'package:flutter/material.dart';
import 'package:final_project_of_mobile/src/entities/registros.dart';

void showDialogFirebase(BuildContext context, Registros registro) {
  String fullName = '${registro.nombre!} ${registro.apellido!}';
  showDialog(
    barrierColor: Colors.white.withOpacity(0.5),
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(fullName),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            FadeInImage(
              height: 200,
              placeholder: const AssetImage('assets/jar-loading.gif'),
              image: NetworkImage(registro.image!),
              fadeInDuration: const Duration(milliseconds: 100),
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 10.0),
            _getRow("Celular:  ", "${registro.cel}"),
            _getRow("Licencia:  ", "${registro.licencia}"),
            const SizedBox(height: 10.0),
            _getCardCarro(registro.carro!),
            const SizedBox(height: 10.0),
            _getCardServicio(registro.servicio!),
          ],
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Cerrar'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

Row _getRow(String title, String value) {
  return Row(
    children: <Widget>[
      Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
      Text(value),
    ],
  );
}

Column _getCardCarro(Carro carro) {
  return Column(
    children: <Widget>[
      const Text("Carro", style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold)),
      _getRow("Modelo:  ", "${carro.modelo}"),
      _getRow("Color:  ", "${carro.color}"),
      _getRow("Placa:  ", "${carro.placa}"),
      _getRow("Marca:  ", "${carro.marca}"),
    ],
  );
}
Column _getCardServicio(Servicio service) {
  return Column(
    children: <Widget>[
      const Text("Servicio", style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold)),
      _getRow("Lavado:  ", "${service.lavado}"),
      _getRow("Polish:  ", "${service.polish}"),
      _getRow("Tapiceria:  ", "${service.tapiceria}"),
    ],
  );
}
