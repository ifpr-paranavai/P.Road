import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:p_road/core/model/entity/passenger.dart';



class PassagersRepo {
  late CollectionReference callCollection;

  static const String REPO_NAME = 'lines';

  CallRepo() {
    callCollection = FirebaseFirestore.instance.collection(REPO_NAME);
  }

  Future<List<Passager>> find() async {
    var res = await callCollection.get();

    var lista = res.docs.map((doc) => Passager(
      id: doc.reference.id.toString(),
      name: doc[Passager.NAME],
      data_nasc: doc[Passager.DATA_NASC],
      email: doc[Passager.EMAIL],
      phone: doc[Passager.PHONE],
      rg: doc[Passager.RG],
      cpf: doc[Passager.CPF],
      status: doc[Passager.STATUS],
    ));
    return lista.toList();
  }

  delete(id) async {
    await callCollection.doc(id).set({Passager.STATUS: false});
  }

  saveOrUpdate(Passager call) async {
    if (call.id.toString().isEmpty || call.id.toString() == 'null') {
      await callCollection.doc().set(call.toJson());
    } else {
      await callCollection.doc(call.id.toString()).set(call.toJson());
    }
  }
}