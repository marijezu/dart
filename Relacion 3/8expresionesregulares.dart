/*8- Vamos por fin a trabajar la validación de strings. Investiga cómo se definen las
expresiones regulares en Dart y construye una función que devuelva true si el string que
se le pase como parámetro hace match con la expresión regular de un color codificado en
RGB:
● ejemplos positivos: #4F6, #982A3B
● ejemplos negativos: red, 987s, 882244*/

import 'dart:io';

// Defino una función que comprueba si un string es un color RGB en formato hex (#RGB o #RRGGBB)
bool esColorRGB(String texto) {

  bool esValido = false;

  // Defino la expresión regular:
  // Empieza por #, seguida de 3 o 6 caracteres hexadecimales (0-9, a-f, A-F)
  RegExp patronColor = RegExp(r'^#([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$');

  // Compruebo si el texto hace match con la expresión regular
  if (patronColor.hasMatch(texto)) {
    esValido = true;
  }

  // Devuelvo el resultado
  return esValido;
}

void main() {
  // Le pido al usuario que escriba un posible color en formato RGB
  stdout.write("Introduce un posible color RGB en hexadecimal (ej: #4F6, #982A3B): ");
  String? entrada = stdin.readLineSync();

  // Compruebo que la entrada no sea nula ni vacía
  if (entrada == null || entrada.isEmpty) {
    print("No has escrito nada.");
  } else {
    // Llamo a la función para saber si es un color válido
    bool resultado = esColorRGB(entrada);

    if (resultado) {
      print("El texto '$entrada' ES un color RGB válido.");
    } else {
      print("El texto '$entrada' NO es un color RGB válido.");
    }
  }

}
