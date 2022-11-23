import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:p_road/core/utils/constants.dart';


class create_lines extends StatefulWidget {
  const create_lines({Key? key}) : super(key: key);

  @override
  State<create_lines> createState() => _create_linesState();
}

var nome;
var local_saida;
var local_destino;
var hora_saida;
var paradas;
var status;

class _create_linesState extends State<create_lines> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Linha'),
      ),
      body: Center(
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                    backgroundColor: Colors.blue,
                    maxRadius: 50,
                    child: Icon(Icons.line_axis,size: 50,color: Colors.white,)),

                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 5,
                  ),
                  child: ListTile(
                    leading: const Icon(Icons.newspaper),
                    title: TextField(
                      onChanged: (value) => nome = value,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        label: Text('Nome'),
                        border: UnderlineInputBorder(),
                        hintText: 'Informe o nome da Linha',
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 5,
                  ),
                  child: ListTile(
                    leading: const Icon(Icons.money),
                    title: TextField(
                      onChanged: (value) => nome = value,
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        label: Text('Local Destino'),
                        border: UnderlineInputBorder(),
                        hintText: 'Informe o destino',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 5,
                  ),
                  child: ListTile(
                    leading: const Icon(Icons.calendar_month),
                    title: TextField(
                      onChanged: (value) => local_saida = value,
                      keyboardType: TextInputType.datetime,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        label: Text('Data Saida'),
                        border: UnderlineInputBorder(),
                        hintText: 'Informe a data que se inicia o plano',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 5,
                  ),
                  child: ListTile(
                    leading: const Icon(Icons.calendar_month),
                    title: TextField(
                      onChanged: (value) => hora_saida = value,
                      keyboardType: TextInputType.datetime,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        label: Text('Paradas'),
                        border: UnderlineInputBorder(),
                        hintText: 'Informe as Paradas da Linha',
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 5,
                  ),
                  child: ListTile(
                    leading: const Icon(Icons.car_crash),
                    title: DropdownSearch<String>(
                      popupProps: PopupProps.menu(
                        showSelectedItems: true,
                        disabledItemFn: (String s) => s.startsWith('I'),
                      ),
                      items: ["Mercede-Benz", "Volvo", "Ford"],
                      dropdownDecoratorProps: DropDownDecoratorProps(
                        dropdownSearchDecoration: InputDecoration(
                          labelText: "Veiculo",
                          hintText: "Selecione o Veiculo",
                        ),
                      ),
                      onChanged: print,
                    )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 5,
                  ),
                  child: ListTile(
                    leading: const Icon(Icons.person_add),
                    title: DropdownSearch<String>.multiSelection(
                      items: [],
                      dropdownDecoratorProps: DropDownDecoratorProps(
                        dropdownSearchDecoration: InputDecoration(
                          labelText: "Passageiros",
                          hintText: "Passageiros da linha"
                        ),
                      ),
                      popupProps: PopupPropsMultiSelection.menu(
                        showSelectedItems: true,
                        disabledItemFn: (String s) => s.startsWith('I'),

                      ),
                      onChanged: print,
                    )
                  ),
                ),


                ElevatedButton(
                  onPressed: () async {
                    // await FirebaseAuth.instance.createUserWithEmailAndPassword(
                    //   email: login,
                    //   password: password,
                    // );
                    Navigator.of(context).pop();
                  },
                  child: const Text('Cadastar'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
