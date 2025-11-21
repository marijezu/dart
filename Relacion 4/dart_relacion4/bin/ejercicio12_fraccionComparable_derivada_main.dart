// Pruebo la clase del ejercicio 12

import 'package:dart_relacion4/fraccionComparable_derivada_fraccion_ej12.dart';

void main() {
  // Aquí yo creo algunas fracciones comparables.
  FraccionComparable f1 = FraccionComparable(1, 2); // 1/2 = 0.5
  FraccionComparable f2 = FraccionComparable(3, 4); // 3/4 = 0.75
  FraccionComparable f3 = FraccionComparable(2, 4); // 2/4 = 0.5 (igual que 1/2)

  print("Fracción 1: $f1");
  print("Fracción 2: $f2");
  print("Fracción 3: $f3");
  print("");

  // Comparo f1 y f2
  print("Comparando $f1 y $f2:");
  print("f1 esMayorQue f2: ${f1.esMayorQue(f2)}");
  print("f1 esMenosQue f2: ${f1.esMenosQue(f2)}");
  print("f1 esIgualA f2: ${f1.esIgualA(f2)}");
  print("f1 esMayorOIgualQue f2: ${f1.esMayorOIgualQue(f2)}");
  print("f1 esMenorOIgualQue f2: ${f1.esMenorOIgualQue(f2)}");
  print("f1 esDistintoQue f2: ${f1.esDistintoQue(f2)}");
  print("");

  // Comparo f1 y f3 (deberían ser iguales en valor real)
  print("Comparando $f1 y $f3:");
  print("f1 esMayorQue f3: ${f1.esMayorQue(f3)}");
  print("f1 esMenosQue f3: ${f1.esMenosQue(f3)}");
  print("f1 esIgualA f3: ${f1.esIgualA(f3)}");
  print("f1 esMayorOIgualQue f3: ${f1.esMayorOIgualQue(f3)}");
  print("f1 esMenorOIgualQue f3: ${f1.esMenorOIgualQue(f3)}");
  print("f1 esDistintoQue f3: ${f1.esDistintoQue(f3)}");
  print("");

  print("Prueba del ejercicio 12 completada.");
}
