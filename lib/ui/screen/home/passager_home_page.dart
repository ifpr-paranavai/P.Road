import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/constants.dart';
import 'home_widget.dart';


class passagerHomePage extends StatefulWidget {
  const passagerHomePage({Key? key}) : super(key: key);

  @override
  State<passagerHomePage> createState() => _pasagerHomePageState();
}

class _pasagerHomePageState extends State<passagerHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("P.Road"),
      ),
      drawer: Drawer(
        backgroundColor: cardColor,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SafeArea(
              child: Card(
                child: ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                  // title: Text('Username'),
                  title: Text(user.email!),
                  trailing: Icon(Icons.more),
                ),
              ),
            ),
            SizedBox(
              height: max(535, 535),
            ),

            ElevatedButton(
              onPressed: () => FirebaseAuth.instance.signOut(),
              //   Navigator.of(context).push(
              //     MaterialPageRoute(
              //       builder: (context) => LoginScreen(),
              //     ),
              //   );
              // },
              child: ListTile(
                leading: Icon(Icons.logout),
                title: Text('Sair'),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
           Card(
              color: cardColor,
              margin: EdgeInsets.all(5),
              child: Column(
                children: [
                  ListTile(
                    title: Text('Linha:',style: TextStyle(fontSize: 20)),
                    subtitle: Row(
                      children: [
                        // Icon(Icons.location_pin,size: 15,),
                        Text('Diaria Manhã',style: TextStyle(fontSize: 20),),
                      ],
                    ),
                  ),

                  ListTile(
                    title: Text('Plano:',style: TextStyle(fontSize: 20)),
                    subtitle: Row(
                      children: [
                        // Icon(Icons.location_pin,size: 15,),
                        Text('Mensal',style: TextStyle(fontSize: 20),),
                        Text(' / ',style: TextStyle(fontSize: 20),),
                        Text('R\$200.00',style: TextStyle(fontSize: 20),),
                      ],
                    ),
                  ),
                  ListTile(
                    title: Text('Saida:',style: TextStyle(fontSize: 25)),
                    subtitle: Row(
                      children: [
                        // Icon(Icons.location_pin,size: 15,),
                        Text('Praça Centro',style: TextStyle(fontSize: 20),),
                      ],
                    ),
                  ),
                  ListTile(
                    title: Text('Destino:',style: TextStyle(fontSize: 25)),
                    subtitle: Row(
                      children: [
                        // Icon(Icons.location_pin,size: 15,),
                        Text('IFPR - Campus Paranavaí',style: TextStyle(fontSize: 20),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          TextButton(onPressed: () => null, child: Text('Solicitar Cancelamento'))
          ],
      ),
    );
  }
}
