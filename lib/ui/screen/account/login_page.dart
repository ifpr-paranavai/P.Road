import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:p_road/ui/screen/account/register_driver_page.dart';
import 'package:p_road/ui/screen/account/register_passager_page.dart';


import 'package:p_road/core/utils/constants.dart';

import '../home/home_page.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String login;
  late String password;

  bool isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Login",style: TextStyle(fontSize: 30),),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 16,
              ),
              child: ListTile(
                leading: const Icon(
                  Icons.email,
                ),
                title: TextField(
                  onChanged: (value) => login = value,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    label: Text('E-mail'),
                    border: UnderlineInputBorder(),
                    hintText: 'Informe seu E-Mail',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,

              ),
              child: ListTile(
                leading: const Icon(
                  Icons.lock,
                ),
                title: TextField(
                  onChanged: (value) => password = value,
                  obscureText: isHidden,
                  decoration: InputDecoration(
                    label: const Text('Senha'),
                    border: const UnderlineInputBorder(),
                    hintText: 'Informe sua Senha',
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
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => driverCreatePage(),
                        ),
                      );
                    },
                    child: const Text("Criar Motorista"),

                  ),
                  Text('/'),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => create_view(),
                        ),
                      );
                    },
                    child: const Text("Criar Passageiro"),

                  ),
                ],

              ),
            ),

            ElevatedButton(
              onPressed: () async {
                await FirebaseAuth.instance
                    .signInWithEmailAndPassword(
                  email: login,
                  password: password,
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
                    builder: (context) => const MainPage(),
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
