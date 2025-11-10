/*7- Haz el programa que resuelva las raíces de una ecuación de segundo grado (ax
2 + bx + c
= 0) a partir de los valores de los coeficientes a, b y c (double). Si las raíces no fueran
reales, debe mostrar un mensaje que así lo indique.*/

import 'dart:math'; // para usar sqrt()

void main() {
  // 
  double a = 1;
  double b = -3;
  double c = 2;

  double contenidoRaiz = b * b - 4 * a * c;

  if (contenidoRaiz < 0) {
    print("Las raíces no son reales.");
  } else {
    double solucion1 = (-b + sqrt(contenidoRaiz)) / (2 * a);
    double solucion2 = (-b - sqrt(contenidoRaiz)) / (2 * a);

    print("Las raíces son:");
    print("La solucion 1 es  = $solucion1");
    print("La solucion 2 es = $solucion2");
  }
}
