import 'package:flutter/material.dart';
import 'package:p_road/core/model/entity/plans.dart';
import 'package:p_road/ui/screen/forms/plans_form_page.dart';

import '../../../core/utils/constants.dart';

class plansListPage extends StatefulWidget {
  const plansListPage({Key? key}) : super(key: key);

  @override
  State<plansListPage> createState() => _plansListPageState();
}

class _plansListPageState extends State<plansListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Planos'),
        ),
        body: Center(
          child: ListView(
            children: [
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
                            title: Text(Plans.ID),
                            subtitle: Row(
                              children: [
                                Icon(
                                  Icons.attach_money,
                                  size: 15,
                                ),
                                Text(Plans.VALOR),
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
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => create_plans()),
            );
          },
          backgroundColor: highlightColor,
          child: Icon(Icons.add,color: Colors.white,),
        ));
  }
}

