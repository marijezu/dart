/*
11- Define la clase fracción en Dart con los atributos numerador y denominador. Define 
también los siguientes métodos: 
● constructor 
● sumar 
● restar 
● multiplicar 
● dividir 
● simplificar 
● máximo común divisor  
● toString() 
*/

class Fraccion {
  int numerador;
  int denominador;

  // Creo el constructor controlando que el denominador no puede ser 0
  Fraccion(this.numerador, this.denominador) {
    if (denominador == 0) {
      throw Exception("El denominador no puede ser cero.");
    }
  }

  // En este método calculo el valor real de la fracción.
  double valorReal() {
    double resultado = numerador / denominador;
    return resultado;
  }

  // En este método yo sumo esta fracción con otra fracción
  // usando la fórmula: a/b + c/d = (ad + bc) / bd.
  Fraccion sumar(Fraccion otra) {
    int nuevoNum = numerador * otra.denominador +
        denominador * otra.numerador;
    int nuevoDen = denominador * otra.denominador;

    Fraccion resultado = Fraccion(nuevoNum, nuevoDen);
    resultado.simplificar();

    return resultado;
  }

  // En este método yo multiplico dos fracciones:
  // (a/b) * (c/d) = (ac) / (bd)
  Fraccion multiplicar(Fraccion otra) {
    int nuevoNum = numerador * otra.numerador;
    int nuevoDen = denominador * otra.denominador;

    Fraccion resultado = Fraccion(nuevoNum, nuevoDen);
    resultado.simplificar();

    return resultado;
  }

  // En este método yo divido dos fracciones:
  // (a/b) / (c/d) = (a/b) * (d/c)
  Fraccion dividir(Fraccion otra) {
    int nuevoNum = numerador * otra.denominador;
    int nuevoDen = denominador * otra.numerador;

    Fraccion resultado = Fraccion(nuevoNum, nuevoDen);
    resultado.simplificar();

    return resultado;
  }

  // En este método yo simplifico la fracción dividiendo numerador y denominador
  // entre el máximo común divisor.
  void simplificar() {
    int mcd = _maximoComunDivisor(numerador.abs(), denominador.abs());

    numerador = numerador ~/ mcd;
    denominador = denominador ~/ mcd;
  }

  // En este método privado yo calculo el máximo común divisor
  // usando el algoritmo de Euclides como en los ejercicio de la primera relacion
  int _maximoComunDivisor(int a, int b) {
    int resultado = a;

    while (b != 0) {
      int temp = b;
      b = a % b;
      a = temp;
      resultado = a;
    }

    return resultado;
  }

  @override
  String toString() {
    String texto = "$numerador/$denominador";
    return texto;
  }
}
