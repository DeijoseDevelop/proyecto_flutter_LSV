import 'package:flutter/material.dart';
import 'package:final_project_of_mobile/src/entities/carro.dart';
import 'package:final_project_of_mobile/src/entities/servicio.dart';
import 'package:final_project_of_mobile/src/entities/registros.dart';

class Body02 extends StatelessWidget {
  const Body02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Carro _carro = Carro(
      color: 'Blue',
      marca: 'Ford',
      modelo: 2015,
      placa: 'ABC123',
    );
    Servicio _servicio = Servicio(
      lavado: 'Si',
      polish: 'No',
      tapiceria: 'Si',
    );
    Registros _registro = Registros(
      carro: _carro,
      servicio: _servicio,
      nombre: 'Deiver',
      apellido: 'Vazquez',
      cel: 3007887902,
      licencia: 'ABC123',
      image: 'assets',
    );

    return Column(
      children: <Widget>[
        const SizedBox(height: 30),
        const Text(
          'Deiver Vazquez',
          style: TextStyle(
            color: Colors.yellow,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'Valencia, Venezuela',
          style: TextStyle(
            color: Colors.yellow.shade100,
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'App Developer at LSV-TECH',
          style: TextStyle(
            color: Colors.yellow.shade100,
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 30),
        ElevatedButton(
            onPressed: () {
              _showAlert(context, _registro);
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(150, 150, 150, 1)),
            ),
            child: const Text(
              'More Information',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            )),
      ],
    );
  }

  void _showAlert(BuildContext context, Registros _registro) {
    showDialog(
        barrierColor: Colors.white.withOpacity(0.5),
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Profile 02'),
            content: Column(
              children: <Widget>[
                const Image(
                  image: AssetImage('assets/images/profile.png'),
                  height: 200,
                ),
                const SizedBox(height: 10.0),
                _getRow("Celular:  ", "${_registro.cel}"),
                _getRow("Licencia:  ", "${_registro.licencia}"),
                const SizedBox(height: 10.0),
                _getCardCarro(_registro.carro!),
                const SizedBox(height: 10.0),
                _getCardServicio(_registro.servicio!),
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
      }
    );
  }
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
      const Text("Carro",
          style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold)),
      const SizedBox(height: 10.0),
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
      const Text("Servicio",
          style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold)),
      const SizedBox(height: 10.0),
      _getRow("Lavado:  ", "${service.lavado}"),
      _getRow("Polish:  ", "${service.polish}"),
      _getRow("Tapiceria:  ", "${service.tapiceria}"),
    ],
  );
}
