import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:p_road/core/model/entity/vehicles.dart';



class VehiclesRepo {
  late CollectionReference callCollection;

  static const String REPO_NAME = 'lines';

  CallRepo() {
    callCollection = FirebaseFirestore.instance.collection(REPO_NAME);
  }

  Future<List<Vehicles>> find() async {
    var res = await callCollection.get();

    var lista = res.docs.map((doc) => Vehicles(
      id: doc.reference.id.toString(),
      placa: doc[Vehicles.PLACA],
      modelo: doc[Vehicles.MODELO],
      motorista: doc[Vehicles.MOTORISTA],
      status: doc[Vehicles.STATUS],
    ));
    return lista.toList();
  }

  delete(id) async {
    await callCollection.doc(id).set({Vehicles.STATUS: false});
  }

  saveOrUpdate(Vehicles call) async {
    if (call.id.toString().isEmpty || call.id.toString() == 'null') {
      await callCollection.doc().set(call.toJson());
    } else {
      await callCollection.doc(call.id.toString()).set(call.toJson());
    }
  }
}