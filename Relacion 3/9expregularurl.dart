import 'dart:io';

final RegExp patronUrl = RegExp(r'^https:\/\/www\.[\w-]+(\.[\w-]+)*(\.es|\.com|\.org)$');

//Indica si la url introducida es valida
bool esURLValida(String texto) {
  bool correcto = false;
  if (patronUrl.hasMatch(texto)) {
    correcto = true;
  }
  return correcto;
}

void main() {
  stdout.write("Introduce una URL: ");
  String? url = stdin.readLineSync();

  if (url == null || url.isEmpty) {
    print("No has introducido ninguna URL");
  } else {
    bool valida = esURLValida(url);
    if (valida) {
      print("La URL tiene un formato válido.");
    } else {
      print("La URL NO tiene un formato válido.");
    }
  }
}
