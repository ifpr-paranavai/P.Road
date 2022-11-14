import 'package:flutter/material.dart';

class create_plans extends StatefulWidget {
  const create_plans({Key? key}) : super(key: key);

  @override
  State<create_plans> createState() => _create_plansState();
}

var nome;
var mensalidade;
var periodo;

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
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 16,
                  ),
                  child: ListTile(
                    leading: const Icon(Icons.newspaper),
                    title: TextField(
                      onChanged: (value) => nome = value,
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
                    vertical: 16,
                  ),
                  child: ListTile(
                    leading: const Icon(Icons.date_range),
                    title: TextField(
                      onChanged: (value) => mensalidade = value,
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        label: Text('Mensalidade'),
                        border: UnderlineInputBorder(),
                        hintText: 'Informe o valor da mensalidade',
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
                    leading: const Icon(Icons.timelapse),
                    title: TextField(
                      onChanged: (value) => periodo = value,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        label: Text('Periodo'),
                        border: UnderlineInputBorder(),
                        hintText: 'Informe o periodo do plano',
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
