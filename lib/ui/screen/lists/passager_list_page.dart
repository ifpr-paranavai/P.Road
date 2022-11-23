import 'package:flutter/material.dart';
import 'package:p_road/core/utils/constants.dart';

import '../../../core/model/entity/passenger.dart';
import '../forms/passagers_form_page.dart';

class passagerListPage extends StatefulWidget {
  const passagerListPage({Key? key}) : super(key: key);

  @override
  State<passagerListPage> createState() => _passagerListPageState();
}

var nome;

class _passagerListPageState extends State<passagerListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Passageiros'),
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
                                  title: Text(Passager.NAME),
                                  subtitle: Row(
                                    children: [
                                      Icon(
                                        Icons.attach_money,
                                        size: 15,
                                      ),
                                      Text(Passager.ENDERECO),
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
              MaterialPageRoute(builder: (context) => create_clients()),
            );
          },
          backgroundColor: highlightColor,
          child: Icon(Icons.add,color: Colors.white,),
        ));
  }
}


