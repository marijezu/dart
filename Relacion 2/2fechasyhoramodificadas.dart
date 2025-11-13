/*2- Haremos una nueva versión del programa y la función anterior para que ésta última
reciba un parámetro: las horas hacia adelante o atrás a partir del momento actual, y calcule
y muestre esa fecha/hora. Investiga en la librería dart:core los métodos disponibles para el
manejo de DateTime. Utiliza el método add en este caso, pero experimenta otros.*/

void mostrarConDesplazamiento(int horas) {
  //Fecha y hora actuales
  final ahora = DateTime.now(); 
  //Suma horas introducidas
  final futura = ahora.add(Duration(hours: horas));

  print("Hora actual: $ahora");
  print("Hora con desplazamiento $horas h: $futura");
}

void main() {
  mostrarConDesplazamiento(3);  
  mostrarConDesplazamiento(-3); 
}
