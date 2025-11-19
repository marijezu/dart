// Ejercicio 3
/*
3- Vamos a crear una clase BanderaFranjas con los siguientes atributos: 
● horizontal/vertical según sea la orientación de las franjas 
● la lista de franjas de colores que la define 
● nombre de país u organización (podría ser nulo) 
Vamos a crear para ella: 
● un método constructor 
● un método que muestre la bandera por pantalla con el nombre de los colores en 
franjas 
● un método que compare dos banderas y diga si son idénticas. Investiga el uso de 
mapEquals() ¿qué necesitamos instalar? 
● un método que compare dos banderas y diga si tiene las mismas franjas en diferente 
orientación 
● un método que invierta el orden de los colores 
● un método que invierta la orientación de las franjas 
*/
// En este archivo de la carpeta lib yo defino la clase BanderaFranjas
// usando MapEquality para comparar las franjas.
// Para usar MapEquality tengo que incluir en pubspec.yaml esto : dependencies: collection: ^1.18.0 y despues ejecutar
// en la terminal dart pub get y aqui importante importar

import 'package:collection/collection.dart';

class BanderaFranjas {
  String orientacion;
  List<String> franjasColores;
  //El ejercicio indica que podria ser nulo
  String? nombrePais;

  BanderaFranjas({
    required this.orientacion,
    required this.franjasColores,
    this.nombrePais,
  });

  // En este método muestro la información completa de la bandera.
  void mostrarBandera() {
    if (nombrePais != null) {
      print("Bandera de $nombrePais");
    } else {
      print("Bandera sin nombre");
    }

    print("Orientación de las franjas: $orientacion");

    print("Franjas de colores:");
    for (int i = 0; i < franjasColores.length; i++) {
      String color = franjasColores[i];
      print("  - Franja ${i + 1}: $color");
    }
  }

  // En este método compruebo si dos banderas son idénticas.
  bool sonIdenticas(BanderaFranjas otraBandera) {
    bool resultado = false;

    bool mismaOrientacion = orientacion == otraBandera.orientacion;
    bool mismoNombre = nombrePais == otraBandera.nombrePais;

    // Aquí convierto la lista de colores a un mapa índice-color.
    Map<int, String> mapa1 = _listaAMapa(franjasColores);
    Map<int, String> mapa2 = _listaAMapa(otraBandera.franjasColores);

    // Uso MapEquality del paquete collection para comparar los mapas.
    bool mismasFranjas = const MapEquality().equals(mapa1, mapa2);

    if (mismaOrientacion && mismoNombre && mismasFranjas) {
      resultado = true;
    }

    return resultado;
  }

  // En este método yo compruebo si tienen las mismas franjas,
  // pero con distinta orientación.
  bool mismasFranjasDistintaOrientacion(BanderaFranjas otraBandera) {
    bool resultado = false;

    bool distintaOrientacion = orientacion != otraBandera.orientacion;

    Map<int, String> mapa1 = _listaAMapa(franjasColores);
    Map<int, String> mapa2 = _listaAMapa(otraBandera.franjasColores);

    bool mismasFranjas = const MapEquality().equals(mapa1, mapa2);

    if (distintaOrientacion && mismasFranjas) {
      resultado = true;
    }

    return resultado;
  }

  // En este método yo invierto los colores de las franjas.
  void invertirColores() {
    List<String> nuevaLista = [];

    for (int i = franjasColores.length - 1; i >= 0; i--) {
      nuevaLista.add(franjasColores[i]);
    }

    franjasColores = nuevaLista;
  }

  // Este método cambia la orientacion de horizontal a vertical.
  void invertirOrientacion() {
    String nuevaOrientacion = orientacion;

    if (orientacion == "horizontal") {
      nuevaOrientacion = "vertical";
    } else {
      nuevaOrientacion = "horizontal";
    }

    orientacion = nuevaOrientacion;
  }

  // Este método convierte la lista en un mapa simple.
  // Como buena practica lo creo privado ya que solo lo voy a usar
  // dentro de la clase. No quiero que el usuario lo use de forma directa
  Map<int, String> _listaAMapa(List<String> lista) {
    Map<int, String> mapa = {};

    for (int i = 0; i < lista.length; i++) {
      mapa[i] = lista[i];
    }

    return mapa;
  }

  @override
  String toString() {
    String nombreMostrado = nombrePais ?? "Sin nombre";
    String colores = franjasColores.join(", ");

    String texto =
        "Informacion de la bandera. Nombre: $nombreMostrado, orientación: $orientacion, franjas: $colores)";
    return texto;
  }
}
