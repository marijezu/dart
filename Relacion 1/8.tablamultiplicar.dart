/*8- Haz un programa en Dart que muestre la tabla de multiplicar de un número entero (entre
1 y 10) que se introducirá por consola. Investiga la función stdin.readLineSync() para
realizar entrada de datos desde consola. ¿Qué ocurre con el sistema “sound type”?.
Soluciónalo utilizando un tipo nullable. Testea la entrada sometiéndola a distintas pruebas
de datos de entrada*/
import 'dart:io';

void main() {
  print("Escribe un número entre 1 y 10:");
  String? entrada = stdin.readLineSync(); // pongo ? porque puede ser null

  if (entrada == null) {
    print("No escribiste nada.");
  } else {
    int? numero = int.tryParse(entrada); 
    //este parse devuelve un número pero en el caso de que lo que haya
    //escrito sea una palabra devuelve null, con lo cual hay que controlar
    //que la respuesta es diferente a null

    if (numero == null) {
      print("Eso no es un número válido.");
    } else if (numero < 1 || numero > 10) {
      print("El número debe estar entre 1 y 10.");
    } else {
      print("Tabla de multiplicar del $numero:");
      for (int i = 1; i <= 10; i++) {
        print("$numero x $i = ${numero * i}");
      }
    }
  }
}
