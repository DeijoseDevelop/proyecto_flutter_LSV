import 'package:final_project_of_mobile/src/domain/firebase_connection.dart';
import 'package:final_project_of_mobile/src/view/semana_3/list_view_card/list_custom_card.dart';
import 'package:flutter/material.dart';

class ListViewCard extends StatelessWidget {
  const ListViewCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'List View Card',
          //style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        //backgroundColor: Color.fromARGB(255, 215, 217, 218),
      ),
      body: ListCustomCard().futureBuilder(context, FirebaseConnection().getAllRegistros()),
    );
  }
}
