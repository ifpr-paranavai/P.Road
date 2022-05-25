import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:p_road/widgets/constants.dart';

class create_view extends StatelessWidget {
  create_view({Key? key}) : super(key: key);

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cadastro"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: Card(
                color: cardColor,
                child: ListTile(
                  leading: const Icon(
                    Icons.email,
                  ),
                  title: TextFormField(
                    controller: emailController,
                    textInputAction: TextInputAction.next,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Informe seu E-Mail',
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
              ),
              child: Card(
                color: cardColor,
                child: ListTile(
                  leading: const Icon(
                    Icons.lock,
                  ),
                  title: TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Informe sua Senha',
                    ),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                await FirebaseAuth.instance.createUserWithEmailAndPassword(
                  email: emailController.text.trim(),
                  password: passwordController.text.trim(),

                );
                Navigator.of(context).pop();
              },
              child: const Text('Cadastar'),
            ),
          ],
        ),
      ),
    );
  }
}
