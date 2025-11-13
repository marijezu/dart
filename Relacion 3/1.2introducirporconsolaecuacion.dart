import 'dart:io';
import 'dart:math';

void main() {
  double a = 0;
  double b = 0;
  double c = 0;
  bool entradaValida = false;

  while (!entradaValida) {
    stdout.write("Introduce el valor de a: ");
    String? entrada = stdin.readLineSync();

    if (entrada != null && entrada.isNotEmpty) {
      try {
        a = double.parse(entrada);

        // a no puede ser 0 porque si no no sería una ecuación de segundo grado
        if (a != 0) {
          entradaValida = true;
        } else {
          print("ERROR. El valor de a no puede ser 0.\n");
        }
      } catch (excepcion) {
        print("ERROR, introduce un número válido.\n");
      }
    } else {
      print("ERROR, no has introducido ningún valor.\n");
    }
  }

  // Vuelvo a iniciar la variable para comprobar los siguientes b y c
  entradaValida = false;

  
  while (!entradaValida) {
    stdout.write("Introduce el valor de b: ");
    String? entrada = stdin.readLineSync();

    if (entrada != null && entrada.isNotEmpty) {
      try {
        b = double.parse(entrada);
        entradaValida = true;
      } catch (excepcion) {
        print("ERROR, introduce un número válido.\n");
      }
    } else {
      print("ERROR, no has introducido ningún valor.\n");
    }
  }
  //Vuelvo a reiniciar la varible para comprobar c
  entradaValida = false;

  while (!entradaValida) {
    stdout.write("Introduce el valor de c: ");
    String? entrada = stdin.readLineSync();

    if (entrada != null && entrada.isNotEmpty) {
      try {
        c = double.parse(entrada);
        entradaValida = true;
      } catch (excepcion) {
        print("ERROR, introduce un número válido.\n");
      }
    } else {
      print("ERROR, no has introducido ningún valor.\n");
    }
  }

  double contenidoRaiz = b * b - 4 * a * c;

  //En el caso de que el contenido de la raiz fuera negativa o 0 no seria real
  if (contenidoRaiz < 0) {
    print("\nLas raíces no son reales.");
  } else {

    double solucion1 = (-b + sqrt(contenidoRaiz)) / (2 * a);
    double solucion2 = (-b - sqrt(contenidoRaiz)) / (2 * a);

    print("\nLas raíces son:");
    print("La solución 1 es = $solucion1");
    print("La solución 2 es = $solucion2");
  }
}
