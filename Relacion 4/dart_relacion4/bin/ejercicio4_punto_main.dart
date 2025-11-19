
import 'package:dart_relacion4/punto_ej4.dart';


void main() {
  //Creo un punto con estos valores
  Punto punto1 = Punto(0.0, 0.0, 0.0);

  // Aquí yo creo otro punto con valores distintos.
  Punto punto2 = Punto(1.6, -4.0, 2.0);

  // Muestro los puntos iniciales.
  print("Punto 1 inicial: $punto1");
  print("Punto 2 inicial: $punto2");
  print("");

  // Ahora yo traslado el punto 1 en horizontal (x).
  print("Traslado el punto 1 en horizontal +2.0");
  punto1.trasladarHorizontal(2.0);
  print("Punto 1 después de trasladar en X: $punto1");
  print("");

  // Ahora yo traslado el punto 1 en vertical (y).
  print("Traslado el punto 1 en vertical -1.0");
  punto1.trasladarVertical(-1.0);
  print("Punto 1 después de trasladar en Y: $punto1");
  print("");

  // Ahora yo traslado el punto 1 en la cota (z).
  print("Traslado el punto 1 en cota +0.5");
  punto1.trasladarCota(0.5);
  print("Punto 1 después de trasladar en Z: $punto1");
  print("");

  // También pruebo traslaciones sobre el punto 2.
  print("Traslado el punto 2 en horizontal -1.5, vertical +2.0 y cota -3.0");
  punto2.trasladarHorizontal(-1.5);
  punto2.trasladarVertical(2.0);
  punto2.trasladarCota(-3.0);
  print("Punto 2 después de todas las traslaciones: $punto2");
}
