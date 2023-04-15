import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Modelos/formulario.dart';

class FactoresWidget extends StatefulWidget {
  final String titulo;
  final double factor;
  final int id;
  final Formulario form;
  const FactoresWidget({ Key? key, required this.titulo, required this.factor, required this.id, required this.form }) : super(key: key);

  @override
  _FactoresWidgetState createState() => _FactoresWidgetState();
}

class _FactoresWidgetState extends State<FactoresWidget> {
@override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          widget.form.factor = widget.factor;
        });
      },
      child: Container(
        width: 180,
        height: 90,
        margin: EdgeInsetsDirectional.all(30),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color:  Colors.white,
          boxShadow: const[
            BoxShadow(
              blurRadius: 10,
              color: Color(0x44111417),
              offset: Offset(0, 2),
            )
          ]
        ),
        child: Column(
          children: [
            const SizedBox(height: 10),
            Text(widget.titulo, style: GoogleFonts.lato(fontSize: 17, fontWeight: FontWeight.bold, color:Colors.black)),
            const SizedBox(height: 10),
            Text(widget.factor.toString(),style: GoogleFonts.blackOpsOne(fontSize: 30, fontWeight: FontWeight.bold, color:Colors.black))
          ]
        ),
      ),
    );
  }
}