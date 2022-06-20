import 'package:final_project_of_mobile/src/entities/registros.dart';
import 'package:final_project_of_mobile/src/view/semana_3/list_view_card/list_provider_card.dart';
import 'package:flutter/material.dart';

class ListCustomCard{
  FutureBuilder futureBuilder(BuildContext context, Future<List<Registros>?> listRegistros){
    return FutureBuilder(
      future: listRegistros,
      initialData: const [],
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return ListProviderCard().buildListItem(snapshot.data);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
