// En este archivo de la carpeta bin yo pruebo la clase Vector
// del ejercicio 6, refactorizada para usar la clase Punto.

import 'package:dart_relacion4/punto_ej4.dart';
import 'package:dart_relacion4/vector_refactorizado_ej6.dart';

void main() {
  // Aquí yo creo dos puntos para el primer vector.
  Punto origen1 = Punto(0.0, 0.0, 0.0);
  Punto destino1 = Punto(1.0, 2.0, 3.0);
  Vector v1 = Vector(origen: origen1, destino: destino1);

  // Aquí yo creo otros dos puntos para el segundo vector.
  Punto origen2 = Punto(0.0, 0.0, 0.0);
  Punto destino2 = Punto(2.0, 1.0, 0.0);
  Vector v2 = Vector(origen: origen2, destino: destino2);

  print("- Vector 1:");
  print(v1);
  print("");

  print("- Vector 2:");
  print(v2);
  print("");

  // Pruebo el producto escalar.
  double prodEscalar = v1.productoEscalar(v2);
  print("Producto escalar de v1 · v2:");
  print(prodEscalar);
  print("");

  // Pruebo el producto por un escalar.
  print("Multiplico v1 por el escalar 2.0:");
  Vector v1Escalado = v1.multiplicarPorEscalar(2.0);
  print(v1Escalado);
  print("");

  // Pruebo la suma de vectores.
  print("Suma de v1 + v2:");
  Vector suma = v1.suma(v2);
  print(suma);
  print("");

  // Pruebo el módulo (sin raíz, como en el código original).
  double moduloV1 = v1.modulo();
  print("Módulo de v1 (suma de cuadrados):");
  print(moduloV1);
  print("");

}
