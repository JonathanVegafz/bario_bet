import 'package:bario_bet/Modelos/formulario.dart';
import 'package:bario_bet/Vista/Web/factorWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../inputText.dart';

class HomeMovil extends StatefulWidget {
  const HomeMovil({ Key? key }) : super(key: key);

  @override
  _HomeMovilState createState() => _HomeMovilState();
}

class _HomeMovilState extends State<HomeMovil> {
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
          child: SingleChildScrollView(
            child: 
              Column(
                children: [
                  const SizedBox(height: 15,),
                  Center(child: Text("Local", style: GoogleFonts.blackOpsOne(fontSize: 30, fontWeight: FontWeight.bold),),),
                  InkWell(
                    onTap: () {
                      setState(() {
                        
                      });
                    },
                    child: Container(
                      height: 100,
                      margin: EdgeInsetsDirectional.symmetric(horizontal: 30),
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
                      child: Row(
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            margin: EdgeInsetsDirectional.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: AssetImage("assets/ColoColo.png")
                              ),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 5,
                                  color: Color(0x44111417),
                                  offset: Offset(0, 2),
                                )
                              ]
                            ),
                          ),
                          const SizedBox(width: 20,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("ColoColo", style: GoogleFonts.lato(fontSize: 25, fontWeight: FontWeight.w300),),
                              Text("Factor: " + (0.2).toString(), style: GoogleFonts.lato(fontSize: 17, fontWeight: FontWeight.bold, color:Colors.black)),
                            ],
                          )
                        ],
                      ),
                  )
          ),
                  Center(child: Text("Visita", style: GoogleFonts.blackOpsOne(fontSize: 30, fontWeight: FontWeight.bold),),),
                  InkWell(
                    onTap: () {
                      setState(() {
                        
                      });
                    },
                    child: Container(
                      height: 100,
                      margin: EdgeInsetsDirectional.symmetric(horizontal: 30),
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
                      child: Row(
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            margin: const EdgeInsetsDirectional.symmetric(horizontal: 10),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                              image: const DecorationImage(
                                fit: BoxFit.contain,
                                image: AssetImage("assets/U.png")
                              ),
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 5,
                                  color: Color(0x44111417),
                                  offset: Offset(0, 2),
                                )
                              ]
                            ),
                          ),
                          const SizedBox(width: 20,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("U. Chile", style: GoogleFonts.lato(fontSize: 25, fontWeight: FontWeight.w300),),
                              Text("Factor: " + (0.4).toString(), style: GoogleFonts.lato(fontSize: 17, fontWeight: FontWeight.bold, color:Colors.black)),
                            ],
                          )
                        ],
                      ),
                  )
          ),
                  Container(
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
                        Text("Empate", style: GoogleFonts.lato(fontSize: 17, fontWeight: FontWeight.bold, color:Colors.black)),
                        const SizedBox(height: 10),
                        Text((0.7).toString(),style: GoogleFonts.blackOpsOne(fontSize: 30, fontWeight: FontWeight.bold, color:Colors.black))
                      ]
                    ),
                  ),
                  Text("Formulario"),
                  const SizedBox(height: 15,),
                  inputNombre,
                  const SizedBox(height: 15,),
                  inputCorreo,
                  const SizedBox(height: 15,),
                  InkWell(
                    onTap: () => {
                      setState((){
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
              )
        )
    )));
  }
}