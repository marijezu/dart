// En este archivo de la carpeta lib yo defino las clases del ejercicio 7:
// Figura, Cuadrado, Circulo y Triangulo.

import 'dart:math';

// Defino la clase abstracta Figura.
abstract class Figura {
  // Defino el getter abstracto area.
  double get area;

  // Anado el nuevo metodo abstracto get perimetro.
  double get perimetro;

  //Creo el metodo que imprime la informacion de figura
  void printValores() {

    print("Área: $area");
    print("Perímetro: $perimetro");
  }
}

// Creo la clase Cuadrado que hereda de Figura.
class Cuadrado extends Figura {

  final double lado;

  // Creo el constructor
  Cuadrado(this.lado);

  // Calculo el área del cuadrado.
  @override
  double get area {
    double resultado = lado * lado;
    return resultado;
  }

  // Calculo el perímetro del cuadrado: 4 * lado.
  @override
  double get perimetro {
    double resultado = 4 * lado;
    return resultado;
  }

  @override
  String toString() {
    String texto = "Cuadrado(lado: $lado)";
    return texto;
  }
}

// Creo la clase Circulo que hereda de Figura.
class Circulo extends Figura {
  final double radio;

  // Creo el constructor
  Circulo(this.radio);

  //Calculo el area
  @override
  double get area {
    double resultado = pi * radio * radio;
    return resultado;
  }

  //Calculo el perímetro del círculo: 2 * pi * radio.
  @override
  double get perimetro {
    double resultado = 2 * pi * radio;
    return resultado;
  }

  @override
  String toString() {
    String texto = "Circulo(radio: $radio)";
    return texto;
  }
}

// Creo la clase Triangulo que hereda de Figura.
class Triangulo extends Figura {
  // declaro los tres lados
  final double lado1;
  final double lado2;
  final double lado3;

  // Creo el constructor
  Triangulo(this.lado1, this.lado2, this.lado3);

  // Calculo el área usando la fórmula de Herón.
  // Primero calculo el semiperímetro y luego aplico la raíz cuadrada.
  @override
  double get area {
    double s = (lado1 + lado2 + lado3) / 2;
    double bajoRaiz =
        s * (s - lado1) * (s - lado2) * (s - lado3);

    double resultado = 0.0;

    // Aquí yo controlo que bajoRaiz no sea negativo por errores de redondeo.
    if (bajoRaiz > 0) {
      resultado = sqrt(bajoRaiz);
    }

    return resultado;
  }

  // Calculo el perímetro del triángulo: suma de los tres lados.
  @override
  double get perimetro {
    double resultado = lado1 + lado2 + lado3;
    return resultado;
  }

  @override
  String toString() {
    String texto =
        "Triangulo(lado1: $lado1, lado2: $lado2, lado3: $lado3)";
    return texto;
  }
}
