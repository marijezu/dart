 
/*10- Haz un programa que declare e inicialice un número entero positivo e invoque a una
función que lo convierta en binario y lo devuelva en forma de cadena (String) de ceros y
unos. El programa deberá mostrar el resultado por pantalla.
Una vez que funcione adecuadamente, modifica la función para que tenga un segundo
parámetro, la base de conversión, que será 2 por defecto, pero que pueda ser cualquier
otra, hasta la base 8.*/
 

import 'dart:io';

//Funcion que convierte un numero en binario
String convertirBase(int numero, [int base = 2]) {
  String resultado = "";

  while (numero > 0) {
    int resto = numero % base;
    resultado = resto.toString() + resultado;
    numero = numero ~/ base;
  }

  if (resultado == "") {
    resultado = "0";
  }

  return resultado;
}

void main() {
  // Pido un número por teclado
  print("Introduce un número entero positivo:");
  // Puede que el usuario no introduzca nada por eso ?
  String? entrada = stdin.readLineSync(); 


  int numero = 0;
  if (entrada != null && entrada.isNotEmpty) {
    numero = int.parse(entrada);
    print("Has escrito: $numero");
  } else {
    print("ERROR. No has escrito ningún número");
  }

  // Lo muestro en binario usando la base por defecto que es 2
  String binario = convertirBase(numero);
  print("El número $numero en binario es: $binario");

  // Lo muestro en binario usando la base 8
  String base8 = convertirBase(numero, 8);
  print("El número $numero en base 8 es: $base8");
}
