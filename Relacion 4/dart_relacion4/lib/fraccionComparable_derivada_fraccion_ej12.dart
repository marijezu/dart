/*
12- Revisa la clase Fracción y crea una clase derivada FraccionComparable que incluya 
los métodos booleanos que calculen: 
● esMayorQue 
● esMenosQue 
● esIgualA 
● esMayorOIgualQue 
● esMenorOIgualQue 
● esDistintoQue 
*/

// Defino la clase FraccionComparable que hereda de Fraccion y añade métodos de comparación indicados en el enunciado

import 'fraccion_ej11.dart';

class FraccionComparable extends Fraccion {
  // Creo el constructor
  FraccionComparable(int numerador, int denominador)
      : super(numerador, denominador);

  // En este método comparo dos fracciones sin usar decimales.
  // De esta forma a/b ? c/d  ->  a*d ? c*b
  int _compararCon(FraccionComparable otra) {
    // Aquí calculo a*d y c*b.
    int primera = numerador * otra.denominador;
    int segunda = otra.numerador * denominador;

    int resultado = 0;

    if (primera > segunda) {
      resultado = 1;
    } else {
      bool sonIguales = primera == segunda;
      if (sonIguales) {
        resultado = 0;
      } else {
        resultado = -1;
      }
    }

    return resultado;
  }

  // Devuelve true si esta fracción es mayor que la otra.
  bool esMayorQue(FraccionComparable otra) {
    int resultadoComparacion = _compararCon(otra);
    bool resultado = resultadoComparacion > 0;
    return resultado;
  }

  // Devuelve true si esta fracción es menor que la otra.
  bool esMenosQue(FraccionComparable otra) {
    int resultadoComparacion = _compararCon(otra);
    bool resultado = resultadoComparacion < 0;
    return resultado;
  }

  // Devuelve true si esta fracción es igual a la otra.
  bool esIgualA(FraccionComparable otra) {
    int resultadoComparacion = _compararCon(otra);
    bool resultado = resultadoComparacion == 0;
    return resultado;
  }

  // Devuelve true si esta fracción es mayor o igual que la otra.
  bool esMayorOIgualQue(FraccionComparable otra) {
    int resultadoComparacion = _compararCon(otra);
    bool resultado = resultadoComparacion >= 0;
    return resultado;
  }

  // Devuelve true si esta fracción es menor o igual que la otra.
  bool esMenorOIgualQue(FraccionComparable otra) {
    int resultadoComparacion = _compararCon(otra);
    bool resultado = resultadoComparacion <= 0;
    return resultado;
  }

  // Devuelve true si esta fracción es distinta de la otra.
  bool esDistintoQue(FraccionComparable otra) {
    int resultadoComparacion = _compararCon(otra);
    bool resultado = resultadoComparacion != 0;
    return resultado;
  }
}

