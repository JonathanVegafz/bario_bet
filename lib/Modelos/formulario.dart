class Formulario{
  String nombreEquipo = "";
  double factor = 0.0;
  String nombreUsuario = "";
  String correo = "";
  
  Formulario(this.nombreEquipo, this.factor, this.nombreUsuario, this.correo);
  Formulario.vacio(){
    nombreEquipo = "";
    factor = 0.0;
    nombreUsuario = "";
    correo = "";
  }

  bool completado(String nombre, String correoElectronico){

    if(nombreEquipo.isEmpty || factor == 0.0 || nombre.isEmpty || correoElectronico.isEmpty){
      return false;
    }

    return true;
  }

}