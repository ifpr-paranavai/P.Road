import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:p_road/views/create_view.dart';
import 'package:p_road/views/mainpage_view.dart';
import 'package:p_road/widgets/constants.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
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
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => create_view(),
                  ),
                );
              },
              child: const Text("Não possui uma conta ?"),
            ),
            ElevatedButton(
              onPressed: () async {
                await FirebaseAuth.instance
                    .signInWithEmailAndPassword(
                  email: emailController.text.trim(),
                  password: passwordController.text.trim(),
                )
                    .catchError((exe) {
                  showDialog(
                    context: context,
                    builder: (context) => const AlertDialog(
                      title: Text("E-mail ou Senha incorretas"),
                      backgroundColor: cardColor,
                    ),
                  );
                });

                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const Main_page(),
                  ),
                );
              },
              child: const Text('Logar'),
            ),
          ],
        ),
      ),
    );
  }
}
