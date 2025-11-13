/* EXPRESION REGULAR: 10- Lo mismo con correos electrónicos */

import 'dart:io';

final RegExp patronEmail = RegExp(r'^[\w\.\-]+@[A-Za-z0-9\-]+\.(com|es|org)$',);

//Indica si es un email valido o no
bool esEmailValido(String texto) {
  bool esValido = false;

  if (patronEmail.hasMatch(texto)) {
    esValido = true;
  }
  return esValido;
}

void main() {
  stdout.write("Introduce un correo electrónico: ");
  String? email = stdin.readLineSync();

  if (email == null || email.isEmpty) {
    print("No has introducido ningún correo");
  } else {
    bool valido = esEmailValido(email);

    if (valido) {
      print("El correo tiene un formato válido.");
    } else {
      print("El correo NO tiene un formato válido.");
    }
  }
}
