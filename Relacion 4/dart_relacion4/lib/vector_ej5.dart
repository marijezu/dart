/*
5- Define una clase Vector utilizando para ello la clase Punto:
● un vector queda definido por dos puntos: inicio y fin
● debe poder trasladarse en vertical, horizontal y en la cota (trasladando cada uno de
sus puntos)
● debe poder calcularse el producto de un escalar por un vector
● debe poderse sumar con otro vector
● debe poderse calcular el producto vectorial (solo si tienes formación matemática)
*/

import 'punto_ej4.dart';

class Vector {
  // Aquí defino el punto de inicio del vector.
  Punto inicio;

  // Aquí defino el punto de fin del vector.
  Punto fin;

  // Creo el constructor
  Vector({
    required this.inicio,
    required this.fin,
  });

  // Este método privado me devuelve el desplazamiento en X del vector.
  double _dx() {
    double valor = fin.x - inicio.x;
    return valor;
  }

  // Este método privado me devuelve el desplazamiento en Y del vector.
  double _dy() {
    double valor = fin.y - inicio.y;
    return valor;
  }

  // Este método privado me devuelve el desplazamiento en Z del vector.
  double _dz() {
    double valor = fin.z - inicio.z;
    return valor;
  }

  // En este método yo traslado el vector en el eje X.
  // Traslado tanto el punto de inicio como el de fin.
  void trasladarX(double desplazamientoX) {
    inicio.trasladarHorizontal(desplazamientoX);
    fin.trasladarHorizontal(desplazamientoX);
  }

  // En este método yo traslado el vector en el eje Y.
  void trasladarY(double desplazamientoY) {
    inicio.trasladarVertical(desplazamientoY);
    fin.trasladarVertical(desplazamientoY);
  }

  // En este método yo traslado el vector en el eje Z (cota).
  void trasladarZ(double desplazamientoZ) {
    inicio.trasladarCota(desplazamientoZ);
    fin.trasladarCota(desplazamientoZ);
  }

  // En este método yo calculo el producto de un escalar por el vector.
  // Devuelvo un nuevo vector. Mantengo el mismo punto de inicio
  // y cambio el punto de fin según el escalar.
  Vector multiplicarPorEscalar(double escalar) {
    // Primero calculo el desplazamiento actual.
    double dx = _dx();
    double dy = _dy();
    double dz = _dz();

    // Aquí calculo el nuevo punto de fin aplicando el escalar.
    Punto nuevoFin = Punto(
      inicio.x + dx * escalar,
      inicio.y + dy * escalar,
      inicio.z + dz * escalar,
    );

    // Creo el nuevo vector con el mismo inicio y el nuevo fin.
    Vector nuevoVector = Vector(inicio: inicio, fin: nuevoFin);

    return nuevoVector;
  }

  // En este método yo sumo el vector actual con otro vector.
  // Para simplificar, yo considero que el resultado tiene el mismo
  // punto de inicio que el primer vector (this.inicio).
  Vector sumar(Vector otro) {
    // Desplazamiento del primer vector (this).
    double dx1 = _dx();
    double dy1 = _dy();
    double dz1 = _dz();

    // Desplazamiento del otro vector.
    double dx2 = otro._dx();
    double dy2 = otro._dy();
    double dz2 = otro._dz();

    // La suma de vectores es la suma de sus desplazamientos.
    double dxTotal = dx1 + dx2;
    double dyTotal = dy1 + dy2;
    double dzTotal = dz1 + dz2;

    // El inicio del nuevo vector es el mismo que el inicio del primero.
    Punto nuevoInicio = Punto(inicio.x, inicio.y, inicio.z);

    // El nuevo fin es inicio + desplazamiento total.
    Punto nuevoFin = Punto(
      nuevoInicio.x + dxTotal,
      nuevoInicio.y + dyTotal,
      nuevoInicio.z + dzTotal,
    );

    Vector resultado = Vector(inicio: nuevoInicio, fin: nuevoFin);

    return resultado;
  }

  // En este método yo calculo el producto vectorial (o producto cruzado)
  // entre este vector y otro vector.
  // Solo lo uso si tengo formación matemática, pero aquí lo dejo implementado.
  Vector productoVectorial(Vector otro) {
    // Desplazamientos del primer vector.
    double dx1 = _dx();
    double dy1 = _dy();
    double dz1 = _dz();

    // Desplazamientos del segundo vector.
    double dx2 = otro._dx();
    double dy2 = otro._dy();
    double dz2 = otro._dz();

    // Aquí aplico la fórmula del producto vectorial:
    // (dx1, dy1, dz1) x (dx2, dy2, dz2) =
    // (dy1*dz2 - dz1*dy2,
    //  dz1*dx2 - dx1*dz2,
    //  dx1*dy2 - dy1*dx2)
    double cx = (dy1 * dz2) - (dz1 * dy2);
    double cy = (dz1 * dx2) - (dx1 * dz2);
    double cz = (dx1 * dy2) - (dy1 * dx2);

    // Para el vector resultado yo tomo como inicio el origen (0, 0, 0).
    Punto nuevoInicio = Punto(0.0, 0.0, 0.0);
    Punto nuevoFin = Punto(cx, cy, cz);

    Vector resultado = Vector(inicio: nuevoInicio, fin: nuevoFin);

    return resultado;
  }

  // En este método toString yo preparo un texto que describa el vector.
  @override
  String toString() {
    // Yo uso el toString del punto para mostrar inicio y fin.
    String texto =
        "Vector(inicio: ${inicio.toString()}, fin: ${fin.toString()})";

    return texto;
  }
}
