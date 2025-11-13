/*5- Para el caso inverso anterior, utilizaremos la función parse(): a partir de una serie de
Strings que representan en formato cadena datos de tipo int, double, etc… convertiremos
y asignaremos su contenido a variables de cada uno de estos tipos. ¿Qué ocurre con List,
Map, Enum, Set…? ¿Cómo deben convertirse en String?
 */ 

// Defino un enum
enum Dia { lunes, martes, miercoles, jueves, viernes, sabado, domingo }

void main() {


  // Creo String de int, double, bool, List, Map, Enum y Set
  String sEntero  = "42";
  String sDouble  = "3.1415";
  String sBool    = "true";
  String sLista   = "1,2,3,4";
  String sMapa    = "Maria Jesus:30,Raquel:25";
  String sSet     = "camiseta,pantalon,sudadera";
  String sEnum    = "miercoles";

  
  //Uso parse para int y double
  int numeroEntero = int.parse(sEntero);
  double numeroDecimal = double.parse(sDouble);

  //Como no existe parse para bool lo hago de esta forma
  bool valorBool;
  if (sBool.toLowerCase() == "true") {
    valorBool = true;
  } else {
    valorBool = false;
  }

  print("Paso a int un String: $numeroEntero");
  print("Paso a double un String: $numeroDecimal");
  print("Paso a bool un String: $valorBool");

  //Creo una lista de string a la que le anado los valores de sLista indicando con el split que estan separados por ,
  List<String> partesLista = sLista.split(","); // ["1","2","3","4"]
  //Creo una nueva lista de enteros para ir haciendole el parse a cada uno de ellos de la lista anterior
  List<int> listaEnteros = [];

  //Recorro la lista de string
  for (int i = 0; i < partesLista.length; i = i + 1) {
    //convierto a int
    int valor = int.parse(partesLista[i]);
    //anado a lista de int
    listaEnteros.add(valor);
  }

  print("List<int> desde String: $listaEnteros");

  //Creo un mapa de edades
  Map<String, int> mapaEdades = {};
  //Anado a una lista cada clave valor de sMapa indicando que esta separados por una ,
  List<String> claveYValor = sMapa.split(",");

  for (int i = 0; i < claveYValor.length; i = i + 1) {
    //"Maria Jesus:30"
    String parejaClaveYValor  = claveYValor[i];
    //["Maria Jesus","30"]
    //Anado a una nueva lista se la clave por un lado y el valor por otro
    List<String> partes = parejaClaveYValor.split(":");
    //El primer valor 0 corresponde al nombre
    String nombre = partes[0];
    //El segundo valor 1 corresponde a la edad
    int edad = int.parse(partes[1]);

    mapaEdades[nombre] = edad;
  }

  print("Map<String,int> desde String: $mapaEdades");

  //Creo una lista en la que introduzco los valores de sSet indicando que estan separados por ,
  List<String> partesSet = sSet.split(","); // ["rojo","verde","azul"]
  //Creo un set
  Set<String> conjuntoRopa = {};

  //Recorro la lista y voy anadiendo al set cada valor incluido en ella
  for (int i = 0; i < partesSet.length; i = i + 1) {
    conjuntoRopa.add(partesSet[i]);
  }

  print("Set<String> desde String: $conjuntoRopa");

  // Convierto el string a dia
  Dia diaConvertido = convertirStringADia(sEnum);

  print("Enum Dia desde String: $diaConvertido");
  print("Indico solo el nombre del enum: ${diaConvertido.name}");

  // Los paso a String
  print("\n--- Conversión inversa a String ---");
  print("Entero a String: " + numeroEntero.toString());
  print("Double a String: " + numeroDecimal.toString());
  print("Bool a String: " + valorBool.toString());
  print("Lista a String: " + listaEnteros.toString());
  print("Mapa a String: " + mapaEdades.toString());
  print("Set a String: " + conjuntoRopa.toString());
  print("Enum a String: " + diaConvertido.name);
}

// Función que convierte un String en un valor del enum Dia
// Si no encuentra coincidencia, devuelve Dia.lunes por defecto
Dia convertirStringADia(String texto) {
  //Creo este valor por defecto
  Dia resultado = Dia.lunes;

  // Paso a minuscula para que al buscarlo no haya errores
  String buscado = texto.toLowerCase();

  for (int i = 0; i < Dia.values.length; i = i + 1) {
    Dia diaActual = Dia.values[i];
    if (diaActual.name == buscado) {
      resultado = diaActual;
    }
  }
  return resultado;
}


