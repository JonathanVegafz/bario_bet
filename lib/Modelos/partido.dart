import 'package:bario_bet/Modelos/equipo.dart';

class Partido {
  String idPartido = "";
  double factorLocal = 0.1;
  double factorVisita = 0.1;
  double factorEmpate = 0.1;

  Equipo equipoLocal = new Equipo.nuevo();
  Equipo equipoVisita = new Equipo.nuevo();

  Estado_Partido estadoPartido = Estado_Partido.No_Inicia;
  
  String fecha = "";

  Partido(this.idPartido, this.factorLocal, this.factorEmpate, this.factorVisita, this.equipoLocal, this.equipoVisita, this.estadoPartido);
  Partido.medias(this.idPartido, this.factorLocal, this.factorEmpate, this.factorVisita);
}

// ignore: non_constant_identifier_names
enum Estado_Partido{
  Gano_Local, Gano_Visita, Empate, En_Proseso, No_Inicia
}
