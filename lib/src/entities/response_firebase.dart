import 'package:final_project_of_mobile/src/entities/registros.dart';

class ResponseFirebase {
  List<Registros>? registros;

  ResponseFirebase({this.registros});

  factory ResponseFirebase.fromJson(List list)=>
    ResponseFirebase(registros: list.map((e) => Registros.fromJson(e)).toList());
}
