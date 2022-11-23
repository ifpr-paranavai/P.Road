
class Driver {
  static const String ID = 'id';
  static const String NAME = 'name';
  static const String EMAIL = "email";
  static const String DATA_NASC = "data_nasc";
  static const String ENDERECO = "endereço";
  static const String PHONE = "telefone";
  static const String RG = "rg";
  static const String CPF = "cpf";
  static const String CNH = "cnh";
  static const String STATUS = "status";

  String? id;
  String? name;
  String? data_nasc;
  String? email;
  String? endereco;
  String? phone;
  String? rg;
  String? cpf;
  String? cnh;
  String? status;

  Driver({
    this.id,
    this.name,
    this.data_nasc,
    this.email,
    this.endereco,
    this.phone,
    this.rg,
    this.cpf,
    this.cnh,
    this.status,
  });

  static Driver fromJson(Map<String, dynamic> json) => Driver(
    id: json[ID] as String?,
    name: json[NAME] as String?,
    data_nasc: json[DATA_NASC] as String?,
    email: json[EMAIL] as String?,
    phone: json[PHONE] as String?,
    rg: json[RG] as String?,
    cpf: json[CPF] as String?,
    cnh: json[CNH] as String?,
    status: json[STATUS] as String?,
  );

  Map<String, dynamic> toJson() {
    return {
      ID: id,
      NAME: name,
      DATA_NASC: data_nasc,
      EMAIL: email,
      PHONE: phone,
      RG: rg,
      CPF: cpf,
      CNH: cnh,
      STATUS: status,
    };
  }
}