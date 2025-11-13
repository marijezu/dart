/*
14- Haremos lo mismo con las funciones aplicables a un Map: isEmpty, isNotEmpty,
containsKey, remove, putIfAbsent, y los atributos entries, values, keys, length. y el
siguiente Map inicial:
Map<String,String> grupo Whatsapp = { ‘Pepe’: ‘111111111’,
‘María’:’222222222’,
’Ana’:’3333333’}
1. incluir persona
2. eliminar persona
3. buscar persona
4. mostrar componentes grupo
5. salir
*/

import 'dart:io';

void main() {
  // Mapa inicial del grupo de WhatsApp
  Map<String, String> grupoWhatsapp = {
    'Maria Jesus': '678594038',
    'Raquel': '677889675',
    'Eliana': '678776655'
  };

  bool salir = false;

  while (!salir) {
    print("GRUPO DE WHATSAPP");
    print("1. Incluir persona");
    print("2. Eliminar persona");
    print("3. Buscar persona");
    print("4. Mostrar componentes del grupo");
    print("5. Salir");

    stdout.write("Elige una opción (1-5): ");
    String? opcion = stdin.readLineSync();

    if (opcion == null || opcion.isEmpty) {
      print("ERROR. No has introducido ninguna opción.");
    } else {
      switch (opcion) {
        case '1':
          incluirPersona(grupoWhatsapp);
          break;
        case '2':
          eliminarPersona(grupoWhatsapp);
          break;
        case '3':
          buscarPersona(grupoWhatsapp);
          break;
        case '4':
          mostrarGrupo(grupoWhatsapp);
          break;
        case '5':
          print("Cerrando el programa");
          salir = true;
          break;
        default:
          print("ERRORRR! Opción no válida. Intenta de nuevo.");
      }
    }
  }
}

// Funcion que incluye a una persona en el grupo
void incluirPersona(Map<String, String> grupo) {
  stdout.write("Introduce el nombre de la persona que quieres incluir: ");
  String? nombre = stdin.readLineSync();

  stdout.write("Introduce su número de teléfono: ");
  String? telefono = stdin.readLineSync();

  if (nombre != null && nombre.isNotEmpty && telefono != null && telefono.isNotEmpty) {
    // putIfAbsent comprueba que la clave no existe y solo lo anade si no existe
    grupo.putIfAbsent(nombre, () => telefono);
    print("La persona se ha anadido al grupo correctamente. No estaba incluida");
  } else {
    print("ERRORRR.");
  }
}

// Funcion que elimina a una persona del grupo
void eliminarPersona(Map<String, String> grupo) {
  if (grupo.isEmpty) {
    print("ERRORRR. El grupo está vacío.");
  } else {
    stdout.write("Introduce el nombre de la persona que quieres eliminar del grupo: ");
    String? nombre = stdin.readLineSync();

    if (nombre != null && nombre.isNotEmpty) {
      if (grupo.containsKey(nombre)) {
        grupo.remove(nombre);
        print("Se ha eliminado correctamente a '$nombre' del grupo.");
      } else {
        print("ERROR. No existe nadie llamado '$nombre' en el grupo.");
      }
    } else {
      print("ERROOR. No has introducido ningún nombre.");
    }
  }
}

// Funcion que busca a una persona en el grupo
void buscarPersona(Map<String, String> grupo) {
  if (grupo.isEmpty) {
    print("ERROR. El grupo está vacío.");
  } else {
    stdout.write("Introduce el nombre que quieres buscar en el grupo: ");
    String? nombre = stdin.readLineSync();

    if (nombre != null && nombre.isNotEmpty) {
      if (grupo.containsKey(nombre)) {
        print("Teléfono de $nombre: ${grupo[nombre]}");
      } else {
        print("ERROR. No se encontró a '$nombre' en el grupo.");
      }
    } else {
      print("ERROR. No has introducido ningún nombre.");
    }
  }
}

// Funcion que muestra a  todos los miembros del grupo
void mostrarGrupo(Map<String, String> grupo) {
  if (grupo.isNotEmpty) {
    print("Lista de miembros del grupo:");
    // entries → lista de pares clave:valor
    for (var entrada in grupo.entries) {
      print("Nombre: ${entrada.key} - Telefono: ${entrada.value}");
    }
  } else {
    print("ERROR. El grupo está vacío.");
  }
}
