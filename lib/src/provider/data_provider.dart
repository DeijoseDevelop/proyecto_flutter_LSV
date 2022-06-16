import 'package:final_project_of_mobile/src/entities/registros.dart';
import 'package:final_project_of_mobile/src/provider/list_provider.dart';
import 'package:flutter/material.dart';

class DataProvider {
  DataProvider();

  Widget futureBuilder(BuildContext context, Future<List<Registros>?> registros) {
    return FutureBuilder(
      future: registros,
      initialData: const [],
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return ListProvider.showLista(snapshot.data, context);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
