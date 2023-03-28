import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmpateWidget extends StatelessWidget {
const EmpateWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      width: 180,
      height: 90,
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
        children: [
          const SizedBox(height: 10),
          Text("Empate", style: GoogleFonts.lato(fontSize: 17, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Text("0.1",style: GoogleFonts.blackOpsOne(fontSize: 30, fontWeight: FontWeight.bold))
        ]
      ),
    );
  }
}