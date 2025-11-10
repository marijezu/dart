/*11- Haz un pequeño programa en Dart que declare una lista de temperaturas máximas. A
continuación, deberá invocar a una función que reciba como parámetro a esa lista y calcule
y devuelva cual es la temperatura máxima. Haz otra con el mismo esquema de parámetros
y devolución, que devuelva la mínima, y otra para la media*/

void main() {
  // Creo una lista con as temperaturas máximas
  List<double> temperaturas = [35, 40, 42, 45, 39, 46];
  print("Lista de temperaturas: $temperaturas");

  double temperaturaMaxima(List<double> temperaturas){

    double tmaxima = temperaturas[0];
     temperaturas.forEach((temperatura) {
      if(temperatura> tmaxima){
        tmaxima=temperatura;
      }
    });
    return tmaxima;
  }

  double temperaturaMinima(List<double> temperaturas){
    double tminima = temperaturas[0];
    temperaturas.forEach((temperatura) {
      if(temperatura<tminima){
        tminima=temperatura;
      }
  });
  return tminima;
}

  double temperaturaMedia(List<double> temperaturas){

   double suma = 0.00;
    temperaturas.forEach((temperatura) {
      suma = suma + temperatura;
    });

    int longitud = temperaturas.length;
    double media = (suma / longitud).roundToDouble();

    return media;
  }

  print("La temperatura máxima registrada ha sido: ${temperaturaMaxima(temperaturas)}");
  print("La temperatura mínima registrada ha sido: ${temperaturaMinima(temperaturas)}");
  print("La temperatura máxima registrada ha sido: ${temperaturaMedia(temperaturas)}");
}