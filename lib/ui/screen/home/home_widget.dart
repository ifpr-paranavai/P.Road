import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:p_road/ui/screen/forms/lines_form_page.dart';
import 'package:p_road/ui/screen/forms/plans_form_page.dart';
import 'package:p_road/ui/screen/forms/vehicles_form_page.dart';
import 'package:p_road/core/utils/constants.dart';

import '../forms/clients_form_page.dart';




class Main_page extends StatefulWidget {
  const Main_page({Key? key}) : super(key: key);

  @override
  State<Main_page> createState() => _Main_pageState();
}
final user = FirebaseAuth.instance.currentUser!;

class _Main_pageState extends State<Main_page> {
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
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  child: Container(
                    child: InkWell(
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => create_clients(),
                                ),
                              );
                            },
                            icon: const Icon(Icons.person_add),
                          ),
                          Text('Passageiros'),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  child: Container(
                    child: InkWell(
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => create_vehicles(),
                                ),
                              );
                            },
                            icon: Icon(Icons.bus_alert_sharp),
                          ),
                          Text('Veiculos')
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  child: Container(
                    child: InkWell(
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => create_plans(),
                                ),
                              );
                            },
                            icon: Icon(Icons.newspaper),
                          ),
                          Text('Planos')
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  child: Container(
                    child: InkWell(
                      child: Column(
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => create_lines(),
                                ),
                              );
                            },
                            icon: Icon(Icons.line_axis),
                          ),
                          Text('Linhas')
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
