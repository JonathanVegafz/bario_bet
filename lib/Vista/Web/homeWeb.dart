import 'package:bario_bet/Vista/Web/empateWidget.dart';
import 'package:bario_bet/Vista/inputText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Equipo/equipoWidget.dart';

class HomeWeb extends StatefulWidget {

  const HomeWeb({ Key? key }) : super(key: key);

  @override
  _HomeWebState createState() => _HomeWebState();
}

class _HomeWebState extends State<HomeWeb> {
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  InputText inputNombre = InputText("Nombre", TextInputType.name);
  InputText inputCorreo = InputText("E-mail", TextInputType.name);
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
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Center(
            child: SingleChildScrollView(
              child: 
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const EquipoWidget(
                            nombreEquipo: "ColoColo",
                            factor: 1.5,
                            tipoEquipo: "LOCAL",
                            pathImagenEquipo: "assets/ColoColo.png",
                          ),
                          Column(
                            children: [
                              Image.asset("assets/VS.png", width: 200, height: 200,),
                              const SizedBox(height: 40,),
                              EmpateWidget()
                            ],
                          ),
                          const EquipoWidget(
                            nombreEquipo: "U. Chile",
                            factor: 0.5,
                            tipoEquipo: "VISITA",
                            pathImagenEquipo: "assets/U.png",
                          ),
                        ],
                      ),
                      Text("Formulario"),
                      //Text("width: " + MediaQuery.of(context).size.width.toString())
                      Container(
                        width: 700,
                        height: 140,
                        margin: EdgeInsetsDirectional.only(top: 50),
                        child: Column(
                          children: [
                            
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                inputNombre,
                                const SizedBox(width: 50,),
                                inputCorreo
                              ],
                            ),
                            const SizedBox(height: 30,),
                            InkWell(
                              onTap: () => {
                                setState((){
                                  inputNombre.controller.text = "";
                                  inputCorreo.controller.text = "";
                                })
                              },
                              child: Container(
                                width: 160,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.blueAccent,
                                  borderRadius: BorderRadius.circular(15)
                                ),
                                child: Center(child: Text("Enviar", style: GoogleFonts.lato(color: Colors.white),)),
                              )
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
            ),
          )
        )
      )
    );
  }
}