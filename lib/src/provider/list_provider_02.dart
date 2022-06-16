import 'package:final_project_of_mobile/src/utils/showDialogFirebase.dart';
import 'package:flutter/material.dart';

class ListProvider02{
  ListProvider02();

  static ListView showList(BuildContext context, List<dynamic> registros){
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: registros.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: <Widget>[
            ListTile(
              title: Text(registros[index].nombre!),
              subtitle: Text(registros[index].apellido!),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(registros[index].image!),
              ),
              onTap: () {
                showDialogFirebase(context, registros[index]);
              },
              trailing: const Icon(Icons.keyboard_arrow_right),
            )
          ]
        );
      },
    );
  }
}