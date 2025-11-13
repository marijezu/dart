/*
List<String> colores = [‘rojo’,’verde’,’azul’];
A partir de ahí, muestre el siguiente menú de operaciones:
1. incluir color
2. eliminar color
3. buscar color
4. mostrar lista de colores
5. salir
El usuario entrará en un bucle del que se sale pulsando la opción 5. En cualquier otro caso,
efectuará la operación elegida.
Prueba a incluir, eliminar colores, y visualiza la evolución de la lista. ¿Qué ocurriría si
incluimos dos veces el mismo color?¿Se puede considerar esto un comportamiento
erróneo? De ser así, ¿cómo lo solucionarías?
*/

import 'dart:io';

void main() {
  // Lista de colores
  List<String> colores = ['rosa', 'azul', 'morado'];

  bool salir = false;

  //Menu
  while (!salir) {
    print("MENÚ DE OPCIONES");
    print("A. Incluir color");
    print("2. Eliminar color");
    print("3. Buscar color");
    print("4. Mostrar lista de colores");
    print("5. Salir");

    stdout.write("Elige una opción (1-5): ");
    String? opcion = stdin.readLineSync();

    if (opcion == null || opcion.isEmpty) {
      print("ERROR. No has introducido ninguna opción.");
    } else {
      switch (opcion) {
        case '1':
          incluirColor(colores);
          break;
        case '2':
          eliminarColor(colores);
          break;
        case '3':
          buscarColor(colores);
          break;
        case '4':
          mostrarColores(colores);
          break;
        case '5':
          print("Estas saliendo del programa!");
          salir = true;
          break;
        default:
          print("Opción no válida. Intentalo de nuevo.");
      }
    }
  }
}

//Creo una funcion para incluir un color en la lista
void incluirColor(List<String> lista) {
  stdout.write("Introduce un color para añadir: ");
  String? color = stdin.readLineSync();

  if (color != null && color.isNotEmpty) {
    //Compruebo si ya existe el color indicado en la lista
    if (lista.contains(color.toLowerCase())) {
      print("El color indicado '$color' ya existe en la lista.");
    } else {
      lista.add(color.toLowerCase());
      print("El comor indicado '$color' se ha anadido a la lista.");
    }
  } else {
    print("ERROR. No has introducido ningún color.");
  }
}

// Funcion que elimina un color de la lista
void eliminarColor(List<String> lista) {
  if (lista.isEmpty) {
    print("ERRORR. La lista está vacía.");
  } else {
    stdout.write("Introduce el color que quieres eliminar: ");
    String? color = stdin.readLineSync();

    if (color != null && color.isNotEmpty) {
      if (lista.contains(color.toLowerCase())) {
        lista.remove(color.toLowerCase());
        print("El color '$color' se ha eliminado correctamente de la lista.");
      } else {
        print("El color '$color' no existe en la lista.");
      }
    } else {
      print("ERRORR! No has introducido ningún color.");
    }
  }
}

//Funcion que busca un color en la lista
void buscarColor(List<String> lista) {
  stdout.write("Introduce el color que quieres buscar: ");
  String? color = stdin.readLineSync();

  if (color != null && color.isNotEmpty) {
    if (lista.contains(color.toLowerCase())) {
      int posicion = lista.indexOf(color.toLowerCase());
      print("El color '$color' está en la posición $posicion.");
    } else {
      print("El color '$color' no está en la lista.");
    }
  } else {
    print("No has introducido ningún color.");
  }
}

// Funcion que muestra todos los colores
void mostrarColores(List<String> lista) {
  if (lista.isEmpty) {
    print("ERROR. La lista está vacía.");
  } else {
    print("Lista de colores: ");
    print(lista);
  }
}
