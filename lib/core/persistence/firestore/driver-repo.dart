import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:p_road/core/model/entity/driver.dart';

class DriverRepo {
  late CollectionReference callCollection;

  static const String REPO_NAME = 'driver';

  CallRepo() {
    callCollection = FirebaseFirestore.instance.collection(REPO_NAME);
  }

  Future<List<Driver>> find() async {
    var res = await callCollection.get();

    var lista = res.docs.map((doc) => Driver(
      id: doc.reference.id.toString(),
      name: doc[Driver.NAME],
      data_nasc: doc[Driver.DATA_NASC],
      email: doc[Driver.EMAIL],
      phone: doc[Driver.PHONE],
      rg: doc[Driver.RG],
      cpf: doc[Driver.CPF],
      cnh: doc[Driver.CNH],
      status: doc[Driver.STATUS],
    ));
    return lista.toList();
  }

  delete(id) async {
    await callCollection.doc(id).set({Driver.STATUS: false});
  }

  saveOrUpdate(Driver call) async {
    if (call.id.toString().isEmpty || call.id.toString() == 'null') {
      await callCollection.doc().set(call.toJson());
    } else {
      await callCollection.doc(call.id.toString()).set(call.toJson());
    }
  }
}