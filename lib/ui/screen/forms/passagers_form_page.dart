import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../core/model/entity/passenger.dart';

class create_clients extends StatefulWidget {
  const create_clients({Key? key}) : super(key: key);

  @override
  State<create_clients> createState() => _create_clientsState();
}

Passager id = id;
Passager name = name;
Passager data_nasc = data_nasc;
Passager email = email;
Passager endereco = endereco;
Passager phone = phone;
Passager rg = rg;
Passager cpf = cpf;
Passager status = status;


class _create_clientsState extends State<create_clients> {
  get login => null;

  get password => null;

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

                CircleAvatar(
                    backgroundColor: Colors.blue,
                    maxRadius: 50,
                    child: Icon(Icons.person,size: 50,color: Colors.white,)),

                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 5,
                  ),
                  child: ListTile(
                    leading: const Icon(Icons.person_add),
                    trailing: const Icon(Icons.arrow_drop_down,size: 30,),
                    title: TextField(
                      onChanged: (value) => name = value as Passager,
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
                    vertical: 5,
                  ),
                  child: ListTile(
                    leading: const Icon(Icons.email),
                    title: TextField(
                      onChanged: (value) => email = value as Passager,
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
                    vertical: 5,
                  ),
                  child: ListTile(
                    leading: const Icon(Icons.map),
                    title: TextField(
                      onChanged: (value) => endereco = value as Passager,
                      keyboardType: TextInputType.datetime,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        label: Text('Endereço'),
                        border: UnderlineInputBorder(),
                        hintText: 'Informe o Endereço',
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
                    leading: const Icon(Icons.date_range),
                    title: TextField(
                      onChanged: (value) => data_nasc = value as Passager,
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
                    vertical: 5,
                  ),
                  child: ListTile(
                    leading: const Icon(Icons.phone),
                    title: TextField(
                      onChanged: (value) => phone = value as Passager,
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
                    vertical: 5,
                  ),
                  child: ListTile(
                    leading: const Icon(Icons.corporate_fare),
                    title: TextField(
                      onChanged: (value) => cpf = value as Passager,
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
                    vertical: 5,
                  ),
                  child: ListTile(
                    leading: const Icon(Icons.corporate_fare_outlined),
                    title: TextField(
                      onChanged: (value) => rg = value as Passager,
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
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 5,
                  ),
                  child: ListTile(
                    leading: const Icon(Icons.newspaper),
                    trailing: const Icon(Icons.arrow_drop_down,size: 30,),
                    title: TextField(
                      onChanged: (value) => rg = value as Passager,
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        label: Text('Plano'),
                        border: UnderlineInputBorder(),
                        hintText: 'Informe o Plano',
                      ),
                    ),
                  ),
                ),

                ElevatedButton(
                  onPressed: () async {
                    await FirebaseAuth.instance.createUserWithEmailAndPassword(
                      email: login,
                      password: password,
                    );
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
