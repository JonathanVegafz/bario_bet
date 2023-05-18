
import 'package:bario_bet/Modelos/equipo.dart';
import 'package:bario_bet/Modelos/partido.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

Future<Partido> getPartidos(int id) async{
  List partidos = [];

  CollectionReference collectionReference = db.collection("Partido");

  QuerySnapshot querySnapshot = await collectionReference.get();

  querySnapshot.docs.forEach((element) {
    CollectionReference local = db.collection("Partido");
    
    
    partidos.add(
      new Partido(
        element.id, 
        element.get("factorLocal"), 
        element.get("factorEmpate"), 
        element.get("factorVisita"),
        new Equipo(
          element.get("idEquipoLocal"),
          logoEquipo,
          nombreEquipo
        ),
        estadoPartido
      )
    );
  });

  Partido partido = new Partido(
    partidos[0]
  );

  return partidos[0];
}

