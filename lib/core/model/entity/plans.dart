class Plans {
  static const String ID = 'id';
  static const String NOME = 'valor';
  static const String VALOR = "data_inicio";
  static const String DATA_INICIO = "hora_saida";
  static const String DATA_FIM = "data_fim";
  static const String STATUS = "status";

  String? id;
  String? nome;
  String? valor;
  String? data_inicio;
  String? data_fim;
  String? Status;

  Plans({
    this.id,
    this.nome,
    this.valor,
    this.data_inicio,
    this.data_fim,
    this.Status,
  });

  static Plans fromJson(Map<String, dynamic> json) => Plans(
    id: json[ID] as String?,
    nome: json[NOME] as String?,
    data_inicio: json[DATA_INICIO] as String?,
    data_fim: json[DATA_FIM] as String?,
    valor: json[VALOR] as String?,
    Status: json[STATUS] as String?,
  );

  Map<String, dynamic> toJson() {
    return {
      ID: id,
      NOME: nome,
      DATA_INICIO: data_inicio,
      DATA_FIM: data_fim,
      VALOR: valor,
      STATUS: Status,
    };
  }
}