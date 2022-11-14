import 'package:flutter/material.dart';

class create_vehicles extends StatefulWidget {
  const create_vehicles({Key? key}) : super(key: key);

  @override
  State<create_vehicles> createState() => _create_vehiclesState();
}

var placa;
var modelo;
var motorista;


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
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 16,
                  ),
                  child: ListTile(
                    leading: const Icon(Icons.developer_board),
                    title: TextField(
                      onChanged: (value) => placa = value,
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
                    vertical: 16,
                  ),
                  child: ListTile(
                    leading: const Icon(Icons.email),
                    title: TextField(
                      onChanged: (value) => modelo = value,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        label: Text('E-Mail'),
                        border: UnderlineInputBorder(),
                        hintText: 'Informe o modelo do veículo',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 16,
                  ),
                  child: ListTile(
                    leading: const Icon(Icons.date_range),
                    title: TextField(
                      onChanged: (value) => motorista = value,
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
