import 'package:flutter/cupertino.dart';

import '../inputText.dart';

class RevisarUsuario extends StatefulWidget {
  const RevisarUsuario({ Key? key }) : super(key: key);

  @override
  _RevisarUsuarioState createState() => _RevisarUsuarioState();
}

class _RevisarUsuarioState extends State<RevisarUsuario> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Text("Revisar Usuarios"),
            InputText("Nombre del Equipo", TextInputType.name),
            InputText("Logo Equipo", TextInputType.name),
            InputText("Factor", TextInputType.name)
          ],
        )
      ),
    );
  }
}