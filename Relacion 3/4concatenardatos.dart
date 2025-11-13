/* 4- Haremos un pequeño programa en Dart que defina e inicialice internamente un String y,
a continuación, una serie de datos de cada uno de los tipos vistos en la relación 1 (int,
double, bool, List, Map, Enum, Set) y concatenamos el String con cada uno de ellos
utilizando el operador + y la función toString(). Mostraremos el resultado por pantalla para
ver cómo se comporta esta función.
*/
// Defino el Enum fuera del main porque sino me da error
enum Dias { lunes, martes, miercoles, jueves, viernes, sabado, domingo }

void main() {
  // Declaramos un String base
  String texto = "El valor es: ";

  // Declaramos variables de distintos tipos
  int numeroEntero = 25;
  double numeroDecimal = 1.65;
  bool esVerdadero = true;
  List<int> listaNumeros = [1, 2, 3, 4, 5];
  Map<String, int> edades = {"Maria Jesus": 30, "Raquel": 25};
  Set<String> conjuntoRopa = {"camiseta", "pantalon", "sudadera"};

  // Creo variable de tipo Enum
  Dias diaActual = Dias.miercoles;

  // Muestro los resultados concatenando con toString()
  print(texto + numeroEntero.toString());
  print(texto + numeroDecimal.toString());
  print(texto + esVerdadero.toString());
  print(texto + listaNumeros.toString());
  print(texto + edades.toString());
  print(texto + conjuntoRopa.toString());
  print(texto + diaActual.toString());

  //Para mostrar solo el dia puedo hacerlo asi
  //print(texto + diaActual.name);
}
