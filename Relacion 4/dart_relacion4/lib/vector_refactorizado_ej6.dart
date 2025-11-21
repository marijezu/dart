// En este archivo de la carpeta lib  defino la clase Vector
// para el ejercicio 6, refactorizando el código dado para que
// use la clase Punto en lugar de coordenadas sueltas.

import 'punto_ej4.dart';

class Vector {
  // Aquí yo defino el punto de origen del vector.
  Punto origen;

  // Aquí yo defino el punto de destino del vector.
  Punto destino;

  // En este constructor yo recibo los dos puntos y los guardo.
  Vector({
    required this.origen,
    required this.destino,
  });

  // Este método privado me devuelve el desplazamiento en X del vector.
  double _dx() {
    double valor = destino.x - origen.x;
    return valor;
  }

  // Este método privado me devuelve el desplazamiento en Y del vector.
  double _dy() {
    double valor = destino.y - origen.y;
    return valor;
  }

  // Este método privado me devuelve el desplazamiento en Z del vector.
  double _dz() {
    double valor = destino.z - origen.z;
    return valor;
  }

  // Método para calcular el producto escalar con otro vector.
  // Mantengo la misma lógica que el código original:
  // (dx1 * dx2) + (dy1 * dy2) + (dz1 * dz2)
  double productoEscalar(Vector otroVector) {
    double dx1 = _dx();
    double dy1 = _dy();
    double dz1 = _dz();

    double dx2 = otroVector._dx();
    double dy2 = otroVector._dy();
    double dz2 = otroVector._dz();

    double resultado = (dx1 * dx2) + (dy1 * dy2) + (dz1 * dz2);
    return resultado;
  }

  // Método para multiplicar un vector por un escalar.
  // Mantengo el mismo origen (punto origen) y calculo un nuevo destino.
  Vector multiplicarPorEscalar(double escalar) {
    double dx = _dx();
    double dy = _dy();
    double dz = _dz();

    // Aquí yo calculo el nuevo punto destino usando el escalar.
    Punto nuevoDestino = Punto(
      origen.x + dx * escalar,
      origen.y + dy * escalar,
      origen.z + dz * escalar,
    );

    // Creo un nuevo vector con el mismo origen y el nuevo destino.
    Vector nuevoVector = Vector(origen: origen, destino: nuevoDestino);
    return nuevoVector;
  }

  // Método para sumar dos vectores.
  Vector suma(Vector otroVector) {
    double dx1 = _dx();
    double dy1 = _dy();
    double dz1 = _dz();

    double dx2 = otroVector._dx();
    double dy2 = otroVector._dy();
    double dz2 = otroVector._dz();

    double dxTotal = dx1 + dx2;
    double dyTotal = dy1 + dy2;
    double dzTotal = dz1 + dz2;

    // El origen del nuevo vector es el mismo origen del vector actual.
    Punto nuevoOrigen = Punto(origen.x, origen.y, origen.z);

    // El destino es origen + desplazamiento total.
    Punto nuevoDestino = Punto(
      nuevoOrigen.x + dxTotal,
      nuevoOrigen.y + dyTotal,
      nuevoOrigen.z + dzTotal,
    );

    Vector resultado = Vector(origen: nuevoOrigen, destino: nuevoDestino);
    return resultado;
  }

  // Método para calcular el "módulo"
  double modulo() {
    double dx = _dx();
    double dy = _dy();
    double dz = _dz();

    double resultado = (dx * dx) + (dy * dy) + (dz * dz);
    return resultado;
  }

  // En este método toString yo preparo un texto sencillo del vector.
  @override
  String toString() {
    String texto =
        "Vector(origen: ${origen.toString()}, destino: ${destino.toString()})";
    return texto;
  }
}
