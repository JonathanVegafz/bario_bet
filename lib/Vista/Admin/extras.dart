

import 'package:bario_bet/Vista/Admin/adminWidget.dart';
import 'package:bario_bet/Vista/Admin/ingresarEquipoWidget.dart';
import 'package:bario_bet/Vista/Admin/ingresarPartido.dart';
import 'package:bario_bet/Vista/Admin/revisarApuestas.dart';
import 'package:bario_bet/Vista/Admin/revisarUsuario.dart';
import 'package:flutter/material.dart';

class Extras extends StatefulWidget {
  const Extras({ Key? key }) : super(key: key);

  @override
  _ExtrasState createState() => _ExtrasState();
}

class _ExtrasState extends State<Extras> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}

Drawer getDrawer(BuildContext context){
  return Drawer(
    child: ListView(
      
      children: [
        ListTile(title: Text("Ingresar Equipo"), onTap: (){
          AdminWidget.pantalla = IngresarEquipoWidget();
        },),
        ListTile(title: Text("Ingresar Partido"), onTap: (){
          AdminWidget.pantalla = IngresarPartido();
        }),
        ListTile(title: Text("Revisar Usuarios"), onTap: (){
          AdminWidget.pantalla = RevisarUsuario();
        }),
        ListTile(title: Text("Revisar Apuestas"), onTap: (){
          AdminWidget.pantalla = RevisarApuestas();
        }),
      ],
    ),
  );

}