import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:p_road/core/utils/constants.dart';

class driverCreatePage extends StatefulWidget {
  driverCreatePage({Key? key}) : super(key: key);

  @override
  State<driverCreatePage> createState() => _create_viewState();
}

class _create_viewState extends State<driverCreatePage> {
  late String login;

  late String password;

  bool isHidden = true;
  bool isHidden2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cadastro Motorista"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            CircleAvatar(
                maxRadius: 50,
                child: Icon(Icons.work,size: 50)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
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
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
              child: TextField(
                onChanged: (value) => login = value,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.map),
                  label: Text('Endereço'),
                  border: UnderlineInputBorder(),
                  hintText: 'Informe seu Endereço',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
              child: TextField(
                onChanged: (value) => login = value,
                keyboardType: TextInputType.phone,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.phone),
                  label: Text('Telefone'),
                  border: UnderlineInputBorder(),
                  hintText: 'Informe seu Endereço',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
              child: TextField(
                onChanged: (value) => login = value,
                keyboardType: TextInputType.phone,
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.document_scanner),
                  label: Text('CNH'),
                  border: UnderlineInputBorder(),
                  hintText: 'Informe seu CNH',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 8, vertical: 5
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
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 8,vertical: 5
              ),
              child: TextField(
                obscureText: isHidden2,
                decoration: InputDecoration(
                  label: const Text('Confirmar senha'),
                  border: const UnderlineInputBorder(),
                  hintText: 'Informe sua senha novamente',
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.remove_red_eye),
                    onPressed: () {
                      setState(
                            () {
                          isHidden2 = !isHidden2;
                        },
                      );
                    },
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
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
