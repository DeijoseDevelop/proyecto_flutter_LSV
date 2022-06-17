import 'package:final_project_of_mobile/src/domain/firebase_connection.dart';
import 'package:final_project_of_mobile/src/provider/data_provider_02.dart';
import 'package:flutter/material.dart';

class FirebaseList02 extends StatefulWidget {
  const FirebaseList02({Key? key}) : super(key: key);

  @override
  State<FirebaseList02> createState() => _FirebaseList02State();
}

class _FirebaseList02State extends State<FirebaseList02> {
  @override
  Widget build(BuildContext context) {
    FirebaseConnection firebaseConnection = FirebaseConnection();
    DataProvider02 provider = DataProvider02(
      context: context,
      registros: firebaseConnection.getAllRegistros(),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Firebase List version 02'),
        centerTitle: true,
      ),
      body: Center(
        child: provider.createList(),
      ),
    );
  }
}
