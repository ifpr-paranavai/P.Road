import 'package:cloud_firestore/cloud_firestore.dart';

import '../../model/entity/plans.dart';


class PlansRepo {
  late CollectionReference callCollection;

  static const String REPO_NAME = 'lines';

  CallRepo() {
    callCollection = FirebaseFirestore.instance.collection(REPO_NAME);
  }

  Future<List<Plans>> find() async {
    var res = await callCollection.get();

    var lista = res.docs.map((doc) => Plans(
      id: doc.reference.id.toString(),
      nome: doc[Plans.NOME],
      data_inicio: doc[Plans.DATA_INICIO],
      data_fim: doc[Plans.DATA_FIM],
      valor: doc[Plans.VALOR],
      Status: doc[Plans.STATUS],
    ));
    return lista.toList();
  }

  delete(id) async {
    await callCollection.doc(id).set({Plans.STATUS: false});
  }

  saveOrUpdate(Plans call) async {
    if (call.id.toString().isEmpty || call.id.toString() == 'null') {
      await callCollection.doc().set(call.toJson());
    } else {
      await callCollection.doc(call.id.toString()).set(call.toJson());
    }
  }
}