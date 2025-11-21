// Figura, Cuadrado, Circulo y Triangulo.

import 'package:dart_relacion4/figura_ej7.dart';

void main() {
  // Creo un cuadrado de lado 2.0.
  Cuadrado cuadrado = Cuadrado(2.0);

  // Creo un círculo de radio 1.5.
  Circulo circulo = Circulo(1.5);

  // Creo un triángulo con lados 3.0, 4.0 y 5.0.
  Triangulo triangulo = Triangulo(3.0, 4.0, 5.0);

  // Creo una lista de figuras
  List<Figura> figuras = [cuadrado, circulo, triangulo];

  // Recorro la lista y llamo a printValores() en cada figura.
  for (Figura figura in figuras) {
    // Yo muestro primero qué figura es usando toString().
    print("Figura: ${figura.toString()}");
    figura.printValores();
    print(""); // Dejo una línea en blanco para separar visualmente.
  }
}
