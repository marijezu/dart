// TODO: Put public facing types in this file.

//Funcion que devuelve la temperatura máxima
 double temperaturaMaxima(List<double> temperaturas){

    double tmaxima = temperaturas[0];
     temperaturas.forEach((temperatura) {
      if(temperatura> tmaxima){
        tmaxima=temperatura;
      }
    });
    return tmaxima;
  }

//Funcion que devuelve la temperatura minima
  double temperaturaMinima(List<double> temperaturas){
    double tminima = temperaturas[0];
    temperaturas.forEach((temperatura) {
      if(temperatura<tminima){
        tminima=temperatura;
      }
  });
  return tminima;
}

//Funcion que devuelve la temperatura media
  double temperaturaMedia(List<double> temperaturas){

   double suma = 0.00;
    temperaturas.forEach((temperatura) {
      suma = suma + temperatura;
    });

    int longitud = temperaturas.length;
    double media = (suma / longitud).roundToDouble();

    return media;
  }
