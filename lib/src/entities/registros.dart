import 'package:final_project_of_mobile/src/entities/servicio.dart';
import 'package:final_project_of_mobile/src/entities/carro.dart';

class Registros {
  Carro? carro;
  Servicio? servicio;
  String? apellido;
  int? cel;
  String? licencia;
  String? nombre;
  String? image;

  Registros({
    this.carro,
    this.servicio,
    this.apellido,
    this.cel,
    this.licencia,
    this.nombre,
    this.image,
  });

  factory Registros.fromJson(Map<Object?, dynamic> json){
    return Registros(
      carro: json['Carro'] != null ? Carro.fromJson(json['Carro']) : null,
      servicio: json['Servicio'] != null
      ? Servicio.fromJson(json['Servicio'])
      : null,
      apellido: json['apellido'],
      cel: json['cel'],
      licencia: json['licencia'],
      nombre: json['nombre'],
      image: json['image'],
    );
  }
}