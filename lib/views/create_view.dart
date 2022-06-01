import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:p_road/widgets/constants.dart';

class create_view extends StatefulWidget {
  create_view({Key? key}) : super(key: key);

  @override
  State<create_view> createState() => _create_viewState();
}

class _create_viewState extends State<create_view> {
  late String login;

  late String password;

  bool isHidden = true;

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
              child: TextField(
                onChanged: (value) => login = value,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  label: Text('E-mail'),
                  border: UnderlineInputBorder(),
                  hintText: 'Informe seu E-Mail',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
              ),
              child: TextField(
                onChanged: (value) => password = value,
                obscureText: isHidden,
                decoration: InputDecoration(
                  label: const Text('Senha'),
                  border: const UnderlineInputBorder(),
                  hintText: 'Informe sua Senha',
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.remove_red_eye),
                    onPressed: () {
                      setState(
                        () {
                          isHidden = !isHidden;
                        },
                      );
                    },
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
      ),
    );
  }
}
