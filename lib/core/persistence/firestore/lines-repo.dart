import 'package:cloud_firestore/cloud_firestore.dart';

import '../../model/entity/lines.dart';

class LinesRepo {
  late CollectionReference callCollection;

  static const String REPO_NAME = 'lines';

  CallRepo() {
    callCollection = FirebaseFirestore.instance.collection(REPO_NAME);
  }

  Future<List<Lines>> find() async {
    var res = await callCollection.get();

    var lista = res.docs.map((doc) => Lines(
      id: doc.reference.id.toString(),
      local_saida: doc[Lines.LOCAL_SAIDA],
      local_destino: doc[Lines.LOCAL_DESTINO],
      hora_saida: doc[Lines.HORA_SAIDA],
      paradas: doc[Lines.PARADAS],
      status: doc[Lines.STATUS],
    ));
    return lista.toList();
  }

  delete(id) async {
    await callCollection.doc(id).set({Lines.STATUS: false});
  }

  saveOrUpdate(Lines call) async {
    if (call.id.toString().isEmpty || call.id.toString() == 'null') {
      await callCollection.doc().set(call.toJson());
    } else {
      await callCollection.doc(call.id.toString()).set(call.toJson());
    }
  }
}