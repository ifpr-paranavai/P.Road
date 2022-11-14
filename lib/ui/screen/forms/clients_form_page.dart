import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class create_clients extends StatefulWidget {
  const create_clients({Key? key}) : super(key: key);

  @override
  State<create_clients> createState() => _create_clientsState();
}

var nome;
var email;
var data_nasc;
var phone;
var cpf;
var rg;


class _create_clientsState extends State<create_clients> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastrar passageiro'),
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
                    leading: const Icon(Icons.person_add),
                    title: TextField(
                      onChanged: (value) => nome = value,
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        label: Text('Nome'),
                        border: UnderlineInputBorder(),
                        hintText: 'Informe o nome do passageiro',
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
                      onChanged: (value) => email = value,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        label: Text('E-Mail'),
                        border: UnderlineInputBorder(),
                        hintText: 'Informe o E-Mail do passageiro',
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
                      onChanged: (value) => data_nasc = value,
                      keyboardType: TextInputType.datetime,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        label: Text('Data de nascimento'),
                        border: UnderlineInputBorder(),
                        hintText: 'Informe a data de nascimento',
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
                    leading: const Icon(Icons.phone),
                    title: TextField(
                      onChanged: (value) => phone = value,
                      keyboardType: TextInputType.phone,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        label: Text('Telefone'),
                        border: UnderlineInputBorder(),
                        hintText: 'Informe o Telefone do passageiro',
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
                    leading: const Icon(Icons.corporate_fare),
                    title: TextField(
                      onChanged: (value) => cpf = value,
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        label: Text('CPF'),
                        border: UnderlineInputBorder(),
                        hintText: 'Informe o CPF do passageiro',
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
                    leading: const Icon(Icons.corporate_fare_outlined),
                    title: TextField(
                      onChanged: (value) => rg = value,
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        label: Text('RG'),
                        border: UnderlineInputBorder(),
                        hintText: 'Informe o CPF do passageiro',
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
