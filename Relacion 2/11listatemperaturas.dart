/*11- Haz un pequeño programa en Dart que declare una lista de temperaturas máximas. A
continuación, deberá invocar a una función que reciba como parámetro a esa lista y calcule
y devuelva cual es la temperatura máxima. Haz otra con el mismo esquema de parámetros
y devolución, que devuelva la mínima, y otra para la media*/

double temperaturaMaxima(List<double> temperaturas) {
  double tmaxima = temperaturas[0];
  for (double temperatura in temperaturas) {
    if (temperatura > tmaxima) {
      tmaxima = temperatura;
    }
  }
  return tmaxima;
}

double temperaturaMinima(List<double> temperaturas) {
  double tminima = temperaturas[0];
  for (double temperatura in temperaturas) {
    if (temperatura < tminima) {
      tminima = temperatura;
    }
  }
  return tminima;
}

double temperaturaMedia(List<double> temperaturas) {
  double suma = 0.0;
  for (double temperatura in temperaturas) {
    suma = suma + temperatura;
  }
  double media = suma / temperaturas.length;
  return media;
}

void main() {
  List<double> temperaturas = [35, 40, 42, 45, 39, 46];
  print("Lista de todas las temperaturas: $temperaturas");

  print("La temperatura máxima es: ${temperaturaMaxima(temperaturas)}");
  print("La temperatura mínima es: ${temperaturaMinima(temperaturas)}");
  print("La temperatura media es: ${temperaturaMedia(temperaturas)}");
}
