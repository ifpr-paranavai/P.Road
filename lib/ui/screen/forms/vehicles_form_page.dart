import 'package:flutter/material.dart';
import 'package:p_road/core/model/entity/vehicles.dart';

class create_vehicles extends StatefulWidget {
  const create_vehicles({Key? key}) : super(key: key);

  @override
  State<create_vehicles> createState() => _create_vehiclesState();
}

Vehicles id = id;
Vehicles placa = placa;
Vehicles modelo = modelo;
Vehicles motorista = motorista;
Vehicles status = status;



class _create_vehiclesState extends State<create_vehicles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastrar Veiculo'),
      ),
      body: Center(
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                SizedBox(height: 25,),
                CircleAvatar(
                  backgroundColor: Colors.blue,
                    maxRadius: 50,
                    child: Icon(Icons.bus_alert_sharp,size: 50,color: Colors.white,)),

                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 5,
                  ),
                  child: ListTile(
                    leading: const Icon(Icons.developer_board),
                    title: TextField(
                      onChanged: (value) => placa = value as Vehicles,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        label: Text('Placa'),
                        border: UnderlineInputBorder(),
                        hintText: 'Informe a placa do veículo',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 5,
                  ),
                  child: ListTile(
                    leading: const Icon(Icons.email),
                    title: TextField(
                      onChanged: (value) => modelo = value as Vehicles,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        label: Text('Modelo'),
                        border: UnderlineInputBorder(),
                        hintText: 'Informe o modelo do veículo',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 5,
                  ),
                  child: ListTile(
                    leading: const Icon(Icons.person_add_alt_1_rounded),
                    trailing: const Icon(Icons.arrow_drop_down,size: 30,),
                    title: TextField(
                      onChanged: (value) => motorista = value as Vehicles,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        label: Text('Motorista'),
                        border: UnderlineInputBorder(),
                        hintText: 'Informe o motorista do veículo',
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () async {
                    // await FirebaseAuth.instance.createUserWithEmailAndPassword(
                    //   email: login,
                    //   password: password,
                    // );
                    Navigator.of(context).pop();
                  },
                  child: const Text('Cadastar'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
