import 'package:final_project_of_mobile/src/entities/carro.dart';
import 'package:final_project_of_mobile/src/entities/registros.dart';
import 'package:final_project_of_mobile/src/entities/servicio.dart';
import 'package:final_project_of_mobile/src/utils/showDialogFirebase.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomCard extends StatelessWidget {
  String? image;
  String? nombre;
  String? apellido;
  String? licencia;
  int? cel;
  Servicio? servicio;
  Carro? carro;
  CustomCard({
    Key? key,
    required this.image,
    required this.nombre,
    required this.apellido,
    required this.cel,
    required this.licencia,
    required this.servicio,
    required this.carro,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width - 50,
          height: 120,
          child: GestureDetector(
            onTap: () {
              showDialogFirebase(
                context,
                Registros(
                  nombre: nombre,
                  apellido: apellido,
                  image: image,
                  licencia: licencia,
                  cel: cel,
                  carro: carro,
                  servicio: servicio,
                ),
              );
            },
            child: Card(
              //elevation: 5,
              color: const Color.fromARGB(237, 247, 245, 249),
              shape: RoundedRectangleBorder(                  borderRadius: BorderRadius.circular(20.0),
            ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: NetworkImage(image!),
                    radius: 30,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "$nombre",
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "$apellido",
                        style: const TextStyle(
                          color: Color.fromARGB(205, 155, 153, 153),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 70),
                  const Icon(
                    Icons.arrow_forward,
                    color: Color.fromARGB(205, 155, 153, 153),
                  ),
                ],
              ),
            ),
          )
        )
      );
  }
}
