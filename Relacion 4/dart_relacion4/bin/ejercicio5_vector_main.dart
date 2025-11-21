// En este archivo de la carpeta bin yo pruebo la clase Vector
// del ejercicio 5 usando la clase Punto del ejercicio 4.


import 'package:dart_relacion4/punto_ej4.dart';
import 'package:dart_relacion4/vector_ej5.dart';

void main() {
  // Creo dos puntos para definir el primer vector
  Punto pInicio1 = Punto(0.0, 0.0, 0.0);
  Punto pFin1 = Punto(1.0, 2.0, 3.0);
  Vector v1 = Vector(inicio: pInicio1, fin: pFin1);

  // Creo dos puntos para definir el segundo vector
  Punto pInicio2 = Punto(0.0, 0.0, 0.0);
  Punto pFin2 = Punto(2.0, 1.0, 0.0);
  Vector v2 = Vector(inicio: pInicio2, fin: pFin2);

  print("- Vector 1 inicial:");
  print(v1);
  print("");

  print("- Vector 2 inicial:");
  print(v2);
  print("");

  // Pruebo la traslación en X, Y y Z del vector 1.
  print("Traslado el vector 1: +1 en X, -1 en Y, +0.5 en Z");
  v1.trasladarX(1.0);
  v1.trasladarY(-1.0);
  v1.trasladarZ(0.5);
  print(v1);
  print("");

  // Pruebo el producto de un escalar por el vector 2.
  print("Multiplico el vector 2 por el escalar 2.0");
  Vector v2Escalado = v2.multiplicarPorEscalar(2.0);
  print(v2Escalado);
  print("");

  // Pruebo la suma de v1 y v2.
  print("Sumo el vector 1 y el vector 2");
  Vector suma = v1.sumar(v2);
  print(suma);
  print("");

  // Pruebo el producto vectorial entre v1 y v2.
  print("Producto vectorial de vector 1 y vector 2");
  Vector productoVec = v1.productoVectorial(v2);
  print(productoVec);
  print("");
}
