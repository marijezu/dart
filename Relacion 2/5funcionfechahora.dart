/*5- Repitamos el ejercicio de la hora actual y el desplazamiento horario como parámetro
entero normal, pero esta vez, la función devolverá la fecha y hora al punto de llamada.*/

DateTime obtenerConDesplazamiento(int horas) {
  // Suma o resta la hora indicda por parametro a la hora actual
  return DateTime.now().add(Duration(hours: horas));
}

void main() {
  DateTime nuevaHora = obtenerConDesplazamiento(3);
  print("Fecha y hora dentro de 3 horas:  $nuevaHora");
  DateTime nuevaHora2 = obtenerConDesplazamiento(-2);
  print("Fecha y hora hace 2 horas: $nuevaHora2 ");
}