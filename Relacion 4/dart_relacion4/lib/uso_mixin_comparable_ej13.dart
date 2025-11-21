// En este archivo defino la clase FraccionComparableEj13
// que usa la clase Fraccion del ejercicio 11 y el mixin Comparable<T> del ejercicio 13.
import 'package:dart_relacion4/fraccion_ej11.dart';
import 'package:dart_relacion4/mixin_comparable_ej13.dart';

// Aquí yo digo que FraccionComparableEj13 hereda de Fraccion
// y además usa el mixin Comparable<FraccionComparableEj13>.
class FraccionComparable extends Fraccion
    with Comparable<FraccionComparable> {
  // En este constructor yo recibo numerador y denominador y se los paso al padre.
  FraccionComparable(int numerador, int denominador)
      : super(numerador, denominador);

  // En este método yo compruebo si esta fracción es mayor que otra.
  @override
  bool esMayorQue(FraccionComparable otra) {
    bool resultado = false;

    double valor1 = valorReal();
    double valor2 = otra.valorReal();

    if (valor1 > valor2) {
      resultado = true;
    }

    return resultado;
  }

  // En este método yo compruebo si esta fracción es menor que otra.
  @override
  bool esMenosQue(FraccionComparable otra) {
    bool resultado = false;

    double valor1 = valorReal();
    double valor2 = otra.valorReal();

    if (valor1 < valor2) {
      resultado = true;
    }

    return resultado;
  }

  // En este método yo compruebo si esta fracción es igual a otra.
  @override
  bool esIgualA(FraccionComparable otra) {
    bool resultado = false;

    double valor1 = valorReal();
    double valor2 = otra.valorReal();

    if (valor1 == valor2) {
      resultado = true;
    }

    return resultado;
  }

  // En este método yo compruebo si esta fracción es mayor o igual que otra.
  @override
  bool esMayorOIgualQue(FraccionComparable otra) {
    bool resultado = false;

    double valor1 = valorReal();
    double valor2 = otra.valorReal();

    if (valor1 >= valor2) {
      resultado = true;
    }

    return resultado;
  }

  // En este método yo compruebo si esta fracción es menor o igual que otra.
  @override
  bool esMenorOIgualQue(FraccionComparable otra) {
    bool resultado = false;

    double valor1 = valorReal();
    double valor2 = otra.valorReal();

    if (valor1 <= valor2) {
      resultado = true;
    }

    return resultado;
  }

  // En este método yo compruebo si esta fracción es distinta que otra.
  @override
  bool esDistintoQue(FraccionComparable otra) {
    bool resultado = false;

    double valor1 = valorReal();
    double valor2 = otra.valorReal();

    if (valor1 != valor2) {
      resultado = true;
    }

    return resultado;
  }
}
