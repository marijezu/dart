// Pruebo la clase Fraccion del ejercicio 11

import 'package:dart_relacion4/fraccion_ej11.dart';

void main() {
  // Creo algunas fracciones para probar.
  Fraccion f1 = Fraccion(1, 2); // 1/2
  Fraccion f2 = Fraccion(3, 4); // 3/4

  print("Fracción 1: $f1");
  print("Fracción 2: $f2");
  print("");

  // Valor real
  print("Valor real de $f1: ${f1.valorReal()}");
  print("Valor real de $f2: ${f2.valorReal()}");
  print("");

  // Suma
  Fraccion suma = f1.sumar(f2);
  print("$f1 + $f2 = $suma");
  print("");

  // Multiplicación
  Fraccion producto = f1.multiplicar(f2);
  print("$f1 * $f2 = $producto");
  print("");

  // División
  Fraccion division = f1.dividir(f2);
  print("$f1 / $f2 = $division");
  print("");
}
