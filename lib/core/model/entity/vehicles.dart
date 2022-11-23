
class Vehicles {
  static const String ID = 'id';
  static const String PLACA = 'placa';
  static const String MODELO= "modelo";
  static const String MOTORISTA = "motorista";
  static const String STATUS = "status";

  String? id;
  String? placa;
  String? modelo;
  String? motorista;
  String? status;

  Vehicles({
    this.id,
    this.placa,
    this.modelo,
    this.motorista,
    this.status,
  });

  static Vehicles fromJson(Map<String, dynamic> json) => Vehicles(
    id: json[ID] as String?,
    placa: json[PLACA] as String?,
    modelo: json[MODELO] as String?,
    motorista: json[MOTORISTA] as String?,
    status: json[STATUS] as String?,
  );

  Map<String, dynamic> toJson() {
    return {
      ID: id,
      PLACA: placa,
      MODELO: modelo,
      MOTORISTA: motorista,
      STATUS: status,
    };
  }
}