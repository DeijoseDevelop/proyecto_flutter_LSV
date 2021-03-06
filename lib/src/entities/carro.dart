class Carro {
  final String? color;
  final String? marca;
  final int? modelo;
  final String? placa;

  Carro({this.color, this.marca, this.modelo, this.placa});

  factory Carro.fromJson(Map<Object?, dynamic> json){
    return Carro(
      color: json['color'],
      marca: json['marca'],
      modelo: json['modelo'],
      placa: json['placa'],
    );
  }
}