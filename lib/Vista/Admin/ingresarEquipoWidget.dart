import 'package:flutter/cupertino.dart';

import '../inputText.dart';

class IngresarEquipoWidget extends StatefulWidget {
  const IngresarEquipoWidget({ Key? key }) : super(key: key);

  @override
  _IngresarEquipoWidgetState createState() => _IngresarEquipoWidgetState();
}

class _IngresarEquipoWidgetState extends State<IngresarEquipoWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text("Ingresar Equipo"),
            InputText("Nombre del Equipo", TextInputType.name),
            InputText("Logo Equipo", TextInputType.name),
            InputText("Factor", TextInputType.name)
          ],
        ),
      )
    );
  }
}