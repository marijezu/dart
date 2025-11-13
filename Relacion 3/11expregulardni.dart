/*Expresion regular: 11- Ídem con DNIs españoles. Tendrá que comprobar que la letra es correcta . */

import 'dart:io';

// Creo el patron del dni que contiene 8 numeros y 1 letra al final
final RegExp patronDni= RegExp(r'^\d{8}[A-Za-z]$');

//Creo una constante con las posibles letras del DNI
const String letrasDNI = "TRWAGMYFPDXBNJZSQVHLCKE";

// Calculo la resta dividiendo el numero del dni entre 23 y con el resto busco la posicion de la letra
// en letras dni
String calculoLetra(int numero) {
  String letra = letrasDNI[numero % 23];
  return letra;
}

// Devuelve si el dni es valido o no
bool esDNIValido(String dni) {
  bool valido = false;

  if (patronDni.hasMatch(dni)) {
    // Separo la parte del numero del dni y la parte de la letra
    String parteDniNumero = dni.substring(0, 8);
    String parteDniLetra = dni.substring(8).toUpperCase();

    // Calculo la letra correcta y la comparo con la introducida
    int numero = int.parse(parteDniNumero);
    String letraCorrecta = calculoLetra(numero);

    if (parteDniLetra== letraCorrecta) {
      valido = true;
    }else{
      valido = false;
    }
  }

  return valido;
}

void main() {
  stdout.write("Introduce un DNI (8 dígitos + letra): ");
  String? dni = stdin.readLineSync();

  if (dni == null || dni.isEmpty) {
    print("No has introducido ningún DNI");
  } else {
    bool valido = esDNIValido(dni);

    if (valido) {
      print("El dni introducido es valido.");
    } else {
      // Si quieres saber si falla por formato, puedes comprobar _dniRegex aparte:
      if (!patronDni.hasMatch(dni)) {
        print("Formato inválido. Debe ser 8 dígitos y una letra.");
      } else {
        print("La letra del dni indicada no es correcta");
      }
    }
  }
}
