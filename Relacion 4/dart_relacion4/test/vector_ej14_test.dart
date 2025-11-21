// En este archivo de la carpeta test yo creo los tests 
// para la clase Vector del ejercicio 5 (ejercicio 14 de testing).

import 'package:test/test.dart';
import 'package:dart_relacion4/punto_ej4.dart';
import 'package:dart_relacion4/vector_ej5.dart';

void main() {
  group("Tests de la clase Vector (ejercicio 5)", () {
    test("Crear un vector y comprobar sus puntos inicio y fin", () {
      Punto inicio = Punto(0.0, 0.0, 0.0);
      Punto fin = Punto(1.0, 2.0, 3.0);
      Vector v = Vector(inicio: inicio, fin: fin);

      expect(v.inicio.x, equals(0.0));
      expect(v.inicio.y, equals(0.0));
      expect(v.inicio.z, equals(0.0));

      expect(v.fin.x, equals(1.0));
      expect(v.fin.y, equals(2.0));
      expect(v.fin.z, equals(3.0));
    });

    test("Trasladar el vector en X traslada inicio y fin por igual", () {
      Punto inicio = Punto(0.0, 0.0, 0.0);
      Punto fin = Punto(1.0, 2.0, 3.0);
      Vector v = Vector(inicio: inicio, fin: fin);

      v.trasladarX(2.0); // desplazo +2 en X

      expect(v.inicio.x, equals(2.0));
      expect(v.fin.x, equals(3.0));

      // Y e Z no cambian
      expect(v.inicio.y, equals(0.0));
      expect(v.fin.y, equals(2.0));
      expect(v.inicio.z, equals(0.0));
      expect(v.fin.z, equals(3.0));
    });

    test("Trasladar el vector en Y traslada inicio y fin por igual", () {
      Punto inicio = Punto(0.0, 0.0, 0.0);
      Punto fin = Punto(1.0, 2.0, 3.0);
      Vector v = Vector(inicio: inicio, fin: fin);

      v.trasladarY(-1.0); // desplazo -1 en Y

      expect(v.inicio.y, equals(-1.0));
      expect(v.fin.y, equals(1.0));

      // X y Z no cambian
      expect(v.inicio.x, equals(0.0));
      expect(v.fin.x, equals(1.0));
      expect(v.inicio.z, equals(0.0));
      expect(v.fin.z, equals(3.0));
    });

    test("Trasladar el vector en Z traslada inicio y fin por igual", () {
      Punto inicio = Punto(0.0, 0.0, 0.0);
      Punto fin = Punto(1.0, 2.0, 3.0);
      Vector v = Vector(inicio: inicio, fin: fin);

      v.trasladarZ(0.5); // desplazo +0.5 en Z

      expect(v.inicio.z, equals(0.5));
      expect(v.fin.z, equals(3.5));

      // X e Y no cambian
      expect(v.inicio.x, equals(0.0));
      expect(v.fin.x, equals(1.0));
      expect(v.inicio.y, equals(0.0));
      expect(v.fin.y, equals(2.0));
    });

    test("Multiplicar un vector por un escalar", () {
      // Vector (0,0,0) -> (1,2,3)
      Punto inicio = Punto(0.0, 0.0, 0.0);
      Punto fin = Punto(1.0, 2.0, 3.0);
      Vector v = Vector(inicio: inicio, fin: fin);

      Vector v2 = v.multiplicarPorEscalar(2.0);

      // Inicio se mantiene en el mismo sitio
      expect(v2.inicio.x, equals(0.0));
      expect(v2.inicio.y, equals(0.0));
      expect(v2.inicio.z, equals(0.0));

      // Fin se escala: (2,4,6)
      expect(v2.fin.x, equals(2.0));
      expect(v2.fin.y, equals(4.0));
      expect(v2.fin.z, equals(6.0));
    });

    test("Suma de dos vectores", () {
      // v1 = (0,0,0) -> (1,0,0)
      Vector v1 = Vector(
        inicio: Punto(0.0, 0.0, 0.0),
        fin: Punto(1.0, 0.0, 0.0),
      );

      // v2 = (0,0,0) -> (0,2,0)
      Vector v2 = Vector(
        inicio: Punto(0.0, 0.0, 0.0),
        fin: Punto(0.0, 2.0, 0.0),
      );

      Vector suma = v1.sumar(v2);

      // La suma debería ser (0,0,0) -> (1,2,0)
      expect(suma.inicio.x, equals(0.0));
      expect(suma.inicio.y, equals(0.0));
      expect(suma.inicio.z, equals(0.0));

      expect(suma.fin.x, equals(1.0));
      expect(suma.fin.y, equals(2.0));
      expect(suma.fin.z, equals(0.0));
    });

    test("Producto vectorial de dos vectores ortogonales", () {
      // v1 = (0,0,0) -> (1,0,0)  (eje X)
      Vector v1 = Vector(
        inicio: Punto(0.0, 0.0, 0.0),
        fin: Punto(1.0, 0.0, 0.0),
      );

      // v2 = (0,0,0) -> (0,1,0)  (eje Y)
      Vector v2 = Vector(
        inicio: Punto(0.0, 0.0, 0.0),
        fin: Punto(0.0, 1.0, 0.0),
      );

      Vector producto = v1.productoVectorial(v2);

      // v1 x v2 debería ser (0,0,1) (eje Z positivo)
      expect(producto.inicio.x, equals(0.0));
      expect(producto.inicio.y, equals(0.0));
      expect(producto.inicio.z, equals(0.0));

      expect(producto.fin.x, equals(0.0));
      expect(producto.fin.y, equals(0.0));
      expect(producto.fin.z, equals(1.0));
    });
  });
}
