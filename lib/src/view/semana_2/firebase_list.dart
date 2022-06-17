import 'package:final_project_of_mobile/src/domain/firebase_connection.dart';
import 'package:flutter/material.dart';

import 'package:firebase_database/firebase_database.dart';
import 'package:final_project_of_mobile/src/provider/data_provider.dart';
import 'package:final_project_of_mobile/src/entities/response_firebase.dart';

class FirebaseList extends StatelessWidget {
  const FirebaseList({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

  FirebaseConnection firebaseConnection = FirebaseConnection();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Firebase List'),
        centerTitle: true,
      ),
      body: DataProvider().futureBuilder(
        context, firebaseConnection.getAllRegistros()
        ),
    );
  }
}