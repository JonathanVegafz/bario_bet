import 'package:bario_bet/Modelos/equipo.dart';

class Partido {
  String idPartido = "";
  Partido_Equipo equipoLocal = Partido_Equipo();
  Partido_Equipo equipoVisitante = Partido_Equipo();

  double factorEmpate = 0.0;

  Estado_Partido estadoPartido = Estado_Partido.No_Inicia;
  
  String fecha = "";
}

// ignore: non_constant_identifier_names
enum Estado_Partido{
  Gano_Local, Gano_Visita, Empate, En_Proseso, No_Inicia
}


class Partido_Equipo{
  Equipo equipo = Equipo();
  double factor = 0.0;
}