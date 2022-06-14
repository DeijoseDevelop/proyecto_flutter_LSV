// flutter and dart imports
import 'package:final_project_of_mobile/src/domain/firebase_connection.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

//my imports
import 'package:final_project_of_mobile/src/app.dart';

final connection = FirebaseConnection();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  connection.getAllRegistros();
  runApp(const MyApp());
}
