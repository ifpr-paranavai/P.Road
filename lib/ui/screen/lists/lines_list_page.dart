import 'package:flutter/material.dart';
import 'package:p_road/ui/screen/forms/lines_form_page.dart';
import 'package:p_road/ui/screen/reports/line_reports.dart';

import '../../../core/model/entity/lines.dart';
import '../../../core/model/entity/plans.dart';
import '../../../core/utils/constants.dart';

class linesListPage extends StatefulWidget {
  const linesListPage({Key? key}) : super(key: key);

  @override
  State<linesListPage> createState() => _linesListPageState();
}

Lines nome = nome;

class _linesListPageState extends State<linesListPage> {
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
                                title: Text(Lines.ID),
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
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => linesReportsPage()),
                              );
                            })
                      ];
                    };
                  return ListTile();
                    },
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => create_lines()),
          );
        },
        backgroundColor: highlightColor,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
