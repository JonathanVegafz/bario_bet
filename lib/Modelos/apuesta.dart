import 'Partido.dart';
import 'equipo.dart';

class Apuesta {
  String idApuesta = "";
  Equipo equipoApostado = Equipo();
  //Partido partidoApostado = Partido();
  int montoApostado = 0;
  int montoPosibleGanar = 0;
  Apuesta(this.idApuesta, this.equipoApostado, this.montoApostado, this.montoPosibleGanar);


}