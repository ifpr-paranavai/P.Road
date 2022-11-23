class Lines {
  static const String ID = 'id';
  static const String LOCAL_SAIDA = 'local_saida';
  static const String LOCAL_DESTINO = "local_destino";
  static const String HORA_SAIDA = "hora_saida";
  static const String PARADAS = "paradas";
  static const String STATUS = "status";

  String? id;
  String? local_saida;
  String? local_destino;
  String? hora_saida;
  String? paradas;
  String? status;

  Lines({
    this.id,
    this.local_saida,
    this.local_destino,
    this.hora_saida,
    this.paradas,
    this.status,
  });

  static Lines fromJson(Map<String, dynamic> json) => Lines(
    id: json[ID] as String?,
    local_saida: json[LOCAL_SAIDA] as String?,
    local_destino: json[LOCAL_DESTINO] as String?,
    hora_saida: json[HORA_SAIDA] as String?,
    paradas: json[PARADAS] as String?,
    status: json[STATUS] as String?,
  );

  Map<String, dynamic> toJson() {
    return {
      ID: id,
      LOCAL_SAIDA: local_saida,
      LOCAL_DESTINO: local_destino,
      HORA_SAIDA: hora_saida,
      PARADAS: paradas,
      STATUS: status,
    };
  }
}