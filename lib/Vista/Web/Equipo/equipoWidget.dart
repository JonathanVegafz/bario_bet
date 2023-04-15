import 'package:bario_bet/Modelos/formulario.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'imagenCardEquipo.dart';

class EquipoWidget extends StatefulWidget {
  final String nombreEquipo;
  final String pathImagenEquipo;
  final double factor;
  final String tipoEquipo; //Visita, Local
  final Formulario form;
  const EquipoWidget({ Key? key, required this.nombreEquipo, required this.factor, required this.tipoEquipo, required this.pathImagenEquipo, required this.form }) : super(key: key);
  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return EquipoWidget_();
  }

  
}

class EquipoWidget_ extends State<EquipoWidget>{
  @override
  Widget build(BuildContext context){
    return InkWell(
      onTap: () {
        setState(() {
          widget.form.nombreEquipo = widget.nombreEquipo;
        });
      },
      child: Container(
        width: 250,
        height: 280,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
          boxShadow: const[
            BoxShadow(
              blurRadius: 10,
              color: Color(0x44111417),
              offset: Offset(0, 2),
            )
          ]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 30,),
            Text(widget.tipoEquipo, style: GoogleFonts.blackOpsOne(fontSize: 30, fontWeight: FontWeight.bold),),
            ImagenCardEquipo(widget.pathImagenEquipo),
            const SizedBox(height: 20,),
            Text(widget.nombreEquipo, style: GoogleFonts.lato(fontSize: 25, fontWeight: FontWeight.w300),),
            // const SizedBox(height: 34,),
            // Text("Factor", style: GoogleFonts.lato(fontSize: 17, fontWeight: FontWeight.bold),),
            // const SizedBox(height: 4,),
            // Container(
            //   width: double.infinity,
            //   height: 100,
            //   margin: const EdgeInsetsDirectional.symmetric(horizontal: 15),
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(30),
            //     color: Colors.white,
            //     /*boxShadow: const[
            //       BoxShadow(
            //         blurRadius: 10,
            //         color: Color(0x44111417),
            //         offset: Offset(0, 2),
            //       )
            //     ]*/
            //     //border: Border.all(color: Colors.black, width: 0.5),
            //   ),
            //   child: Center(child: Text(factor.toString(), style: GoogleFonts.blackOpsOne(fontSize: 30, fontWeight: FontWeight.bold))),
            // )
            
          ],
        ),
      ),
    );
  }
}
