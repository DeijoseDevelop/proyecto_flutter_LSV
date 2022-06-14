import 'package:final_project_of_mobile/src/entities/carro.dart';
import 'package:final_project_of_mobile/src/entities/servicio.dart';
import 'package:final_project_of_mobile/src/utils/accordion.dart';
import 'package:final_project_of_mobile/src/utils/card.dart';
import 'package:flutter/material.dart';

class ListProvider {
  static Widget showLista(List<dynamic> data, BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: data.length,
        itemBuilder: (BuildContext context, int index) {
          return Accordion(
              image: data[index].image,
              title: "${data[index].nombre} ${data[index].apellido}",
              content: Column(
                children: <Widget>[
                  CardUtils.getCard(data[index].nombre, data[index].apellido,
                      data[index].cel, data[index].licencia),
                  _listTileCarro(data[index].carro),
                  _listTileServicio(data[index].servicio),
                ],
              ));
        });
  }

  static Widget _listTileCarro(Carro carro) {
    String modelo = carro.modelo.toString();
    return Accordion(
        image:
            "https://www.motor.com.co/__export/1645195106378/sites/motor/img/2022/02/18/20220218_083826238_60f1d0133366b_r_1626460411031_420-517-1528-1071.jpeg_242310155.jpeg",
        title: "Carro",
        content: Column(children: <Widget>[
          ListTile(
            leading: const Icon(Icons.palette),
            title: Text(carro.color as String),
          ),
          ListTile(
            leading: const Icon(Icons.car_rental),
            title: Text(carro.marca as String),
          ),
          ListTile(
            leading: const Icon(Icons.calendar_today_outlined),
            title: Text(modelo),
          ),
          ListTile(
            leading: const Icon(Icons.pix),
            title: Text(carro.placa as String),
          ),
        ]));
  }

  static Widget _listTileServicio(Servicio servicio) {
    return Accordion(
        image:
            "https://static.vecteezy.com/system/resources/previews/006/993/168/original/car-in-workshop-flat-illustration-isolated-on-white-background-auto-vehicle-repair-service-emblem-or-logo-automobile-mechanic-shop-technical-service-banner-free-vector.jpg",
        title: "Servicio",
        content: Column(children: <Widget>[
          ListTile(
            leading: const Icon(Icons.local_car_wash),
            title: const Text("Lavado:"),
            subtitle: Text(servicio.lavado as String),
          ),
          ListTile(
            leading: const Icon(Icons.minor_crash),
            title: const Text("Polish:"),
            subtitle: Text(servicio.polish as String),
          ),
          ListTile(
            leading: const Icon(Icons.car_repair),
            title: const Text("Tapiceria:"),
            subtitle: Text(servicio.tapiceria as String),
          ),
        ]));
  }
}
