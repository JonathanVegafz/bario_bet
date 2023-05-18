
import 'package:bario_bet/Modelos/equipo.dart';
import 'package:bario_bet/Modelos/partido.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

Future<List> getPartidos(String id) async{
  List partidos = [];
  
  CollectionReference referencePartido = db.collection("Partidos");
  
  QuerySnapshot querySnapshotPartido = await referencePartido.get();

  //CollectionReference equipos = db.collection("Equipos");

  //QuerySnapshot querySnapshotEquipo = await equipos.get();

  

  querySnapshotPartido.docs.forEach((partido) {
    
    if(partido.id == id){
      List nuevo = [partido.data()];
      Object? datos = new Partido(
        partido.id, 
        nuevo[0]['factorLocal'], 
        nuevo[0]['factorEmpate'], 
        partido.get("factorVisita"),
        Equipo.nuevo(),
        Equipo.nuevo(), 
        Estado_Partido.En_Proseso
      );
      partidos.add(datos);
      // Partido partidoNuevo = Partido.medias(
      //     idPartido, 
      //     local, 
      //     empate, 
      //     visita, 
      // );
      
      print("Hola");
    }
  });
  
  // querySnapshotPartido.docs.forEach((element) {


  //   Equipo eLocal = new Equipo.nuevo();
  //   Equipo eVisita = new Equipo.nuevo();


  //   String eLocalI = element.get("idEquipoLocal");
  //   String eVisitaI = element.get("idEquipoVisita");
  //   //Se busca los equipos
  //   querySnapshotEquipo.docs.forEach((elementE) {
  //     if(eLocalI == elementE.id){
  //       eLocal = new Equipo(
  //         elementE.id,
  //         elementE.get("pathImagen"),
  //         elementE.get("nombreEquipo")
          
  //       );
  //       return;
  //     }

  //     if(eVisitaI == elementE.id){
  //       eVisita = new Equipo(
  //         elementE.id,
  //         elementE.get("pathImagen"),
  //         elementE.get("nombreEquipo")
          
  //       );
  //       return;
  //     }
  //   });
    
  //   partidos.add(
  //     new Partido(
  //       element.id, 
  //       element.get("factorLocal"), 
  //       element.get("factorEmpate"), 
  //       element.get("factorVisita"),
  //       eLocal,
  //       eVisita, 
  //       Estado_Partido.En_Proseso
  //     )
  //   );
  // });
  
  return partidos;
}

