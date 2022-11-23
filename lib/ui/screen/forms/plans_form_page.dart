import 'package:flutter/material.dart';

import '../../../core/model/entity/plans.dart';

class create_plans extends StatefulWidget {
  const create_plans({Key? key}) : super(key: key);

  @override
  State<create_plans> createState() => _create_plansState();
}

Plans id = id;
Plans nome = nome;
Plans valor = valor;
Plans data_inicio = data_inicio;
Plans data_fim = data_fim;
Plans status = status;

class _create_plansState extends State<create_plans> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastrar Planos'),
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
                    child: Icon(Icons.newspaper,size: 50,color: Colors.white,)),

                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 5,
                  ),
                  child: ListTile(
                    leading: const Icon(Icons.newspaper),
                    title: TextField(
                      onChanged: (value) => nome = value as Plans,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        label: Text('Nome'),
                        border: UnderlineInputBorder(),
                        hintText: 'Informe o nome do Plano',
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
                    leading: const Icon(Icons.money),
                    title: TextField(
                      onChanged: (value) => valor = value as Plans,
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        label: Text('Valor'),
                        border: UnderlineInputBorder(),
                        hintText: 'Informe o valor da mensalidade',
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
                    leading: const Icon(Icons.calendar_month),
                    title: TextField(
                      onChanged: (value) => data_inicio = value as Plans,
                      keyboardType: TextInputType.datetime,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        label: Text('Data Inicio'),
                        border: UnderlineInputBorder(),
                        hintText: 'Informe a data que se inicia o plano',
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
                    leading: const Icon(Icons.calendar_month),
                    title: TextField(
                      onChanged: (value) => data_fim = value as Plans,
                      keyboardType: TextInputType.datetime,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        label: Text('Data fim'),
                        border: UnderlineInputBorder(),
                        hintText: 'Informe a data que acaba o plano',
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
}}
