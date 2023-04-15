import 'package:flutter/cupertino.dart';

import '../inputText.dart';

class IngresarPartido extends StatefulWidget {
  const IngresarPartido({ Key? key }) : super(key: key);

  @override
  _IngresarPartidoState createState() => _IngresarPartidoState();
}

class _IngresarPartidoState extends State<IngresarPartido> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Text("Ingresar Partido"),
            InputText("Nombre del Equipo", TextInputType.name),
            InputText("Logo Equipo", TextInputType.name),
            InputText("Factor", TextInputType.name)
          ],
        )
      ),
    );
  }
}