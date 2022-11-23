import 'package:flutter/material.dart';

import '../../../core/utils/constants.dart';

class linesReportsPage extends StatefulWidget {
  const linesReportsPage({Key? key}) : super(key: key);

  @override
  State<linesReportsPage> createState() => _linesReportsPageState();
}

class _linesReportsPageState extends State<linesReportsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Linhas'),
      ),
      body: Center(
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Card(
                  color: cardColor,
                  margin: EdgeInsets.all(5),
                  child:
                  Column(
                    children: [
                      SizedBox(height: 15),
                      Text("Diaria Manhã", style: TextStyle(fontSize: 35),),
                      SizedBox(height: 5),
                      ListTile(
                        title: Text('Local Destino'),
                        subtitle: Row(
                          children: [
                            Text('IFPR - Campus Paranavaí'),
                          ],
                        ),
                      ),
                      ListTile(
                        title: Text('Horario Saída'),
                        subtitle: Row(
                          children: [
                            Text('06:00'),
                          ],
                        ),
                      ),
                      ListTile(
                        title: Text('Paradas'),
                        subtitle: Row(
                          children: [
                            Text('Centro, Praça, IFPR'),
                          ],
                        ),
                      ),
                      ListTile(
                        title: Text('Veículo'),
                        subtitle: Row(
                          children: [
                            Text('Volvo'),
                          ],
                        ),
                      ),
                      ListTile(
                        title: Text('Passageiros'),
                        subtitle:
                            Text('Teste\nRafael'),

                        ),
                      SizedBox(height: 15),
                    ],

                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 40,),
                    Icon(Icons.edit),
                    SizedBox(width: 20,),
                    Icon(Icons.delete)
                  ],
                ),


              ],
            ),
          ],
        ),
      ),

    );
}
}
