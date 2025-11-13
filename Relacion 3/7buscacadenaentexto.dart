/*7- Haz un pequeño programa en Dart al que le introduzcas una frase y una subcadena.
Buscará si está contenida en la frase, y en qué posición la encuentra por primera y última
vez*/

import 'dart:io';

void main() {
  // Le pido por consola una frase
  stdout.write("Escribe una frase: ");
  String? frase = stdin.readLineSync();

  // Compruebo que la frase no sea nula ni vacía
  if (frase == null || frase.isEmpty) {
    print("No has escrito ninguna frase 😅");
  } else {
    // Le pido ahora que escriba una subcadena (el texto que quiero buscar)
    stdout.write("Escribe una subcadena que quieras buscar dentro de la frase: ");
    String? subcadena = stdin.readLineSync();

    // Compruebo también que la subcadena no sea nula ni vacía
    if (subcadena == null || subcadena.isEmpty) {
      print("No has escrito ninguna subcadena 😅");
    } else {
      // Busco la posición donde aparece por primera vez la subcadena
      int primeraPos = frase.indexOf(subcadena);

      // Busco también la posición donde aparece por última vez
      int ultimaPos = frase.lastIndexOf(subcadena);

      // Compruebo si la subcadena se encontró o no en la frase
      if (primeraPos == -1) {
        // Si devuelve -1 no la ha encontrado
        print("La subcadena '$subcadena' no se encuentra en la frase.");
      } else {
        // Si no es -1,muestro las posiciones donde se encuentra
        print("\nLa subcadena '$subcadena' se encuentra en la frase.");
        print("Primera posición: $primeraPos");
        print("Última posición: $ultimaPos");
      }
    }
  }
}
