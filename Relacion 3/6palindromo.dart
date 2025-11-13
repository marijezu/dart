/* 6- Haz un pequeño programa que Dart que te pida una frase por la entrada estándar y te la
muestre con las palabras en orden contrario. Y también la frase en orden inverso carácter a
carácter. También que te diga si la frase es un palíndromo (por ejemplo: ‘Dabale arroz a la
zorra el abad’ debería dar positivo) */
import 'dart:io';

void main() {
  // Pido una frase por consola
  stdout.write("Escribe una frase: ");
  String? frase = stdin.readLineSync();

  // Compruebo que no sea nula ni vacía
  if (frase == null || frase.isEmpty) {
    print("No has escrito ninguna frase");
  } else {
    //Creo una lista en la que introduzco cada palabra de la frase
    List<String> palabras = frase.split(' ');
    //Invierto la lista
    List<String> palabrasInvertidas = palabras.reversed.toList();

    //Creo una variable para unir en un string de nuevo la frase
    String frasePalabrasInvertidas = "";
    for (int i = 0; i < palabrasInvertidas.length; i = i + 1) {
      frasePalabrasInvertidas = frasePalabrasInvertidas + palabrasInvertidas[i];
      // Añado un espacio excepto en la última palabra
      if (i < palabrasInvertidas.length - 1) {
        frasePalabrasInvertidas = frasePalabrasInvertidas + " ";
      }
    }

    print("\nFrase con las palabras en orden contrario:");
    print(frasePalabrasInvertidas);


    String fraseCaracteresInvertidos = "";
    for (int i = frase.length - 1; i >= 0; i = i - 1) {
      fraseCaracteresInvertidos = fraseCaracteresInvertidos + frase[i];
    }

    print("\nFrase invertida carácter a carácter:");
    print(fraseCaracteresInvertidos);


    // Para comprobar si es un palindromo, Quito espacios y paso todo a minúsculas
    String fraseSinEspacios = "";
    for (int i = 0; i < frase.length; i = i + 1) {
      if (frase[i] != ' ') {
        // paso cada caracter a minuscula
        fraseSinEspacios = fraseSinEspacios + frase[i].toLowerCase();
      }
    }

    // Invierto la frase
    String fraseInvertida = "";
    for (int i = fraseSinEspacios.length - 1; i >= 0; i = i - 1) {
      fraseInvertida = fraseInvertida + fraseSinEspacios[i];
    }

    // Comparamos las dos versiones
    bool esPalindromo = (fraseSinEspacios == fraseInvertida);

    // Mostramos el resultado
    if (esPalindromo) {
      print("\nLa frase ES un palíndromo");
    } else {
      print("\nLa frase NO es un palíndromo");
    }
  }
}
