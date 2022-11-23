import 'dart:math';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:p_road/ui/screen/forms/lines_form_page.dart';
import 'package:p_road/ui/screen/forms/plans_form_page.dart';
import 'package:p_road/ui/screen/forms/vehicles_form_page.dart';
import 'package:p_road/core/utils/constants.dart';
import 'package:p_road/ui/screen/home/passager_home_page.dart';
import 'package:p_road/ui/screen/lists/lines_list_page.dart';

import '../forms/passagers_form_page.dart';
import '../lists/passager_list_page.dart';
import '../lists/plans_list_page.dart';
import '../lists/vehicle_list_page.dart';




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
        backgroundColor: mainColor,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SafeArea(
              child: Card(
                color: cardColor,
                child: ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                  // title: Text('Username'),
                  title: Text(user.email!),
                  subtitle: Text("Motorista"),
                  trailing: Icon(Icons.more),
                ),
              ),
            ),
            SizedBox(
              height: max(520, 520),
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
            child: ListTile(
              title: Text('Passageiros Cadastrados',style: TextStyle(fontSize: 20)),
              subtitle: Row(
                children: [
                  // Icon(Icons.location_pin,size: 15,),
                  Text('2',style: TextStyle(fontSize: 40),),
                ],
              ),
            ),
          ),
          Card(
            color: cardColor,
            margin: EdgeInsets.all(5),
            child: ListTile(
              title: Text('Total por Passageiro',style: TextStyle(fontSize: 20)),
              subtitle: Row(
                children: [
                  // Icon(Icons.location_pin,size: 15,),
                  Text('R\$ 350,00',style: TextStyle(fontSize: 40),),
                ],
              ),
            ),
          ),
          SizedBox(height: 350),
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
                                  builder: (context) => passagerListPage(),
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
                                  builder: (context) => vehicleListPage(),
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
                                  builder: (context) => plansListPage(),
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
                                  builder: (context) => linesListPage(),
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
