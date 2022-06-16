// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:final_project_of_mobile/src/entities/registros.dart';
import 'package:final_project_of_mobile/src/entities/response_firebase.dart';
import 'package:firebase_database/firebase_database.dart';
import 'dart:convert';

class FirebaseConnection {
  final FirebaseDatabase _database = FirebaseDatabase.instance;
  DatabaseReference instanceFirebase() {
    return _database.ref('/Registros');
  }

  Future<List<Registros>?> getAllRegistros() async {
    DatabaseReference _database = instanceFirebase();
    DataSnapshot response = await _database.get();
    final string = json.encode(response.value);
    final data = json.decode(string);
    ResponseFirebase registros = ResponseFirebase.fromJson(data);
    return registros.registros;
  }

  Future<Registros> getOneRegistro(id) async {
    DatabaseReference _database = instanceFirebase();
    DataSnapshot snapshot = await _database.child('/$id').get();
    final string = json.encode(snapshot);
    final data = json.decode(string);
    final registers = data;
    Registros registro = Registros.fromJson(registers);
    return registro;
  }
}
/* Future<List<Registros>> getRegistros() async {
    final registros = await instanceFirebase().once();
    final registrosList = registros.value as List<dynamic>;
    return registrosList
        .map((registro) => Registros.fromJson(registro))
        .toList();
  } */