/*9- Versiona el programa anterior para que muestre las 10 tablas de multiplicar (del 1 al 10).
Ya no será necesario introducir nada*/

void main() {
  // Mostrar las tablas del 1 al 10
  for (int numero = 1; numero <= 10; numero++) {
    print("Tabla de multiplicar del $numero:");
    for (int i = 1; i <= 10; i++) {
      print("$numero x $i = ${numero * i}");
    }
    print("-----------------------------------");
  }
}

