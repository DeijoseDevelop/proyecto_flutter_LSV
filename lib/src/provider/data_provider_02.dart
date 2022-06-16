import 'package:final_project_of_mobile/src/entities/registros.dart';
import 'package:final_project_of_mobile/src/provider/list_provider_02.dart';
import 'package:flutter/material.dart';

class DataProvider02 {
  Future<List<Registros>?>  registros;
  BuildContext context;

  DataProvider02({required this.registros, required this.context});

  Widget createList() {
    return FutureBuilder(
      future: registros,
      initialData: const [],
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          return ListProvider02.showList(context, snapshot.data);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
