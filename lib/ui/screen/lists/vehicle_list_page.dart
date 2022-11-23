import 'package:flutter/material.dart';
import 'package:p_road/core/model/entity/vehicles.dart';
import 'package:p_road/ui/screen/forms/vehicles_form_page.dart';

import '../../../core/utils/constants.dart';

class vehicleListPage extends StatefulWidget {
  const vehicleListPage({Key? key}) : super(key: key);

  @override
  State<vehicleListPage> createState() => _vehicleListPageState();
}

class _vehicleListPageState extends State<vehicleListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Veiculos'),
        ),
        body: Center(
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  FutureBuilder(
                    builder:
                        (BuildContext context, AsyncSnapshot<String> snapshot) {
                      List<Widget> children;
                      if (snapshot.hasData) {
                        children = <Widget>[
                          InkWell(
                            child: Card(
                              color: cardColor,
                              margin: EdgeInsets.all(5),
                              child: ListTile(
                                leading: Icon(
                                  Icons.line_axis,
                                  size: 35,
                                ),
                                title: Text(Vehicles.MODELO),
                                subtitle: Row(
                                  children: [
                                    Icon(
                                      Icons.attach_money,
                                      size: 15,
                                    ),
                                    Text(Vehicles.PLACA),
                                  ],
                                ),
                                trailing: Icon(Icons.edit),
                              ),
                            ),
                          )
                        ];
                      };
                      return ListTile();
                    },
                  )

                ],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,

              MaterialPageRoute(builder: (context) => create_vehicles()),
            );
          },
          backgroundColor: highlightColor,
          child: Icon(Icons.add,color: Colors.white,),
        ));
  }
}

