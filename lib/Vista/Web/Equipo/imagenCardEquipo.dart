import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImagenCardEquipo extends StatelessWidget {
  String nombreImagen;
  ImagenCardEquipo(this.nombreImagen,{
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 90,
      margin: EdgeInsetsDirectional.only(top: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage(nombreImagen)
        ),
        boxShadow: const [
          BoxShadow(
            blurRadius: 5,
            color: Color(0x44111417),
            offset: Offset(0, 2),
          )
        ]
      ),
    );
  }
}