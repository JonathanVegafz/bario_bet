import 'package:bario_bet/Vista/Admin/extras.dart';
import 'package:bario_bet/Vista/Admin/ingresarEquipoWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdminWidget extends StatefulWidget {
  const AdminWidget({ Key? key }) : super(key: key);
  static Widget pantalla = IngresarEquipoWidget();
  @override
  _AdminWidgetState createState() => _AdminWidgetState();


  static void cambioPantalla(Widget pantallaNueva){
    pantalla = pantallaNueva;
  }
}

class _AdminWidgetState extends State<AdminWidget> {
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  // controllerCorreo = TextEditingController();


  @override
  void initState(){
    super.initState();
    
  }
  @override
  void dispose() {
    _unfocusNode.dispose();

    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(),
      //drawer: getDrawer(context),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              getDrawer(context),
              AdminWidget.pantalla
            ],
          )
        )
      )
    );
  }
}