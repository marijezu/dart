/*5- Repitamos el ejercicio de la hora actual y el desplazamiento horario como parámetro
entero normal, pero esta vez, la función devolverá la fecha y hora al punto de llamada.*/

void main(){

  DateTime obtenerConDesplazamiento(int horas) {
    return DateTime.now().add(Duration(hours: horas));
  }

  //adelantar el reloj
  int numero = 5;
  DateTime hora = obtenerConDesplazamiento(numero);
  print("Seran las $hora dentro de $numero horas");
}
