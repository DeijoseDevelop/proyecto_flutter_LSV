import 'package:flutter/material.dart';
import 'package:final_project_of_mobile/src/view/semana_3/list_view_card/custom_card.dart';

class ListProviderCard{
    ListView buildListItem(List<dynamic> registros) {
      return ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: registros.length,
        itemBuilder: (BuildContext context, int index) {
          return CustomCard(
            image: registros[index].image,
            nombre: registros[index].nombre,
            apellido: registros[index].apellido,
            licencia: registros[index].licencia,
            cel: registros[index].cel,
            servicio: registros[index].servicio,
            carro: registros[index].carro,
          );
        },
    );
  }
}
