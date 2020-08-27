import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final opciones = ['uno', 'dos', 'tres', 'cuatro', 'cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp')
      ),
      body: ListView(
        // children: _crearLista(),
        children: _crearListaCorto(),
      ),
    );
  }

  List<Widget> _crearLista() {

    List<Widget> lista = new List<Widget>();

    opciones.forEach((e) {

      final widgetTemp = ListTile(
        title: Text(e),
      );

      lista..add(widgetTemp)
           ..add(Divider());
    });

    return lista;
  }

  List<Widget> _crearListaCorto() {
    return opciones.map((e) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text('$e'),
            subtitle: Text('Cualquier Cosa'),
            leading: Icon( Icons.ac_unit ),
            trailing: Icon( Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider(),
        ],
      );
    }).toList();
  }
}