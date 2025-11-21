// En este archivo de la carpeta test yo creo los tests
// para la clase Punto del ejercicio 14.

import 'package:test/test.dart';
import 'package:dart_relacion4/punto_ej4.dart';

void main() {
  // Aquí yo agrupo los tests relacionados con la clase Punto.
  group("Tests de la clase Punto", () {
    test("Crear un punto y comprobar sus coordenadas iniciales", () {
      Punto p = Punto(1.0, 2.0, 3.0);

      // Aquí yo compruebo que las coordenadas sean las esperadas.
      expect(p.x, equals(1.0));
      expect(p.y, equals(2.0));
      expect(p.z, equals(3.0));
    });

    test("Trasladar el punto en X", () {
      Punto p = Punto(1.0, 2.0, 3.0);

      // Traslado +2 en el eje X.
      p.trasladarHorizontal(2.0);

      expect(p.x, equals(3.0));
      expect(p.y, equals(2.0)); // Y no cambia
      expect(p.z, equals(3.0)); // Z tampoco cambia
    });

    test("Trasladar el punto en Y", () {
      Punto p = Punto(1.0, 2.0, 3.0);

      p.trasladarVertical(-1.0);

      expect(p.x, equals(1.0));
      expect(p.y, equals(1.0)); // 2 + (-1)
      expect(p.z, equals(3.0));
    });

    test("Trasladar el punto en Z", () {
      Punto p = Punto(1.0, 2.0, 3.0);

      p.trasladarCota(0.5);

      expect(p.x, equals(1.0));
      expect(p.y, equals(2.0));
      expect(p.z, equals(3.5));
    });

    test("Comprobar que toString funciona como se espera", () {
      Punto p = Punto(1.0, 2.0, 3.0);

      expect(p.toString(), equals("(1.0, 2.0, 3.0)"));
    });
  });
}
