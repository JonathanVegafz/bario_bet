import 'package:bario_bet/Modelos/formulario.dart';
import 'package:bario_bet/Modelos/usuario.dart';
import 'package:bario_bet/Vista/Web/empateWidget.dart';
import 'package:bario_bet/Vista/Web/factorWidget.dart';
import 'package:bario_bet/Vista/inputText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Equipo/equipoWidget.dart';
import 'Equipo/factoresWidget.dart';

const list = ["500", "1000", "2000", "5000"];
class HomeWeb extends StatefulWidget {
  Formulario formulario = new Formulario.vacio();
  HomeWeb({ Key? key }) : super(key: key);
  

  static List<FactorWidget> listasFactor = [

  ];

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
  
  String dropdownValue = list.first;

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
                          EquipoWidget(
                            nombreEquipo: "ColoColo",
                            factor: 1.5,
                            tipoEquipo: "LOCAL",
                            pathImagenEquipo: "assets/ColoColo.png",
                            form: widget.formulario,
                          ),
                          Column(
                            children: [
                              Image.asset("assets/VS.png", width: 200, height: 200,),
                              //const SizedBox(height: 40,),
                              //EmpateWidget()
                            ],
                          ),
                          EquipoWidget(
                            nombreEquipo: "U. Chile",
                            factor: 0.5,
                            tipoEquipo: "VISITA",
                            pathImagenEquipo: "assets/U.png",
                            form: widget.formulario,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FactoresWidget(titulo: "Local", factor: 0.3, id: 0, form: widget.formulario),
                          FactoresWidget(titulo: "Empate", factor: 0.5, id: 1, form: widget.formulario),
                          FactoresWidget(titulo: "Visita", factor: 0.8, id: 2, form: widget.formulario),
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
                                DropdownButton<String>(
                                  value: dropdownValue,
                                  icon: const Icon(Icons.arrow_downward),
                                  elevation: 16,
                                  style: const TextStyle(color: Colors.deepPurple),
                                  underline: Container(
                                    height: 2,
                                    color: Colors.deepPurpleAccent,
                                  ),
                                  onChanged: (String? value) {
                                    // This is called when the user selects an item.
                                    setState(() {
                                      dropdownValue = value!;
                                    });
                                  },
                                  items: list.map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                                const SizedBox(width: 50,),
                                inputCorreo
                              ],
                            ),
                            const SizedBox(height: 30,),
                            InkWell(
                              onTap: () => {
                                setState((){
                                  
                                  print(widget.formulario.completado(inputNombre.controller.text, inputCorreo.controller.text));
                                  widget.formulario = new Formulario.vacio();
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