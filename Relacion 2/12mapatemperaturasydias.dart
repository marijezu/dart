/*12- Soluciona el problema anterior mediante la declaración de un Map y haciendo que cada
función, en lugar de devolver valores, muestran los resultados por pantalla ellas mismas.*/

void main() {
  // Creo un mapa con las temperaturas y los dias
  Map<String, double> temperaturas = {"dia 1" : 35, "dia 2" : 40, "dia 3" : 42, "dia 4" : 45, "dia 5" : 39, "dia 6" : 46};
  print("Mapa de temperaturas: $temperaturas");

  String diaTemperaturaMaxima(Map <String, double> temperaturas){
    String diaMax= "";
    double tempMax= 0;
      // Recorro el mapa para calcular el dia que ha tenido la temperatura maxima
    temperaturas.forEach((dia, temp) {
      if (temp > tempMax) {
        diaMax = dia;
      }
    });
    return diaMax;
  }

  
  double temperaturaMaxima(Map <String, double> temperaturas){
    double tempMax= 0;
      // Recorro el mapa para calcular los valores
    temperaturas.forEach((dia, temp) {
      if (temp > tempMax) {
        tempMax=temp;
      }
    });
    return  tempMax;
  }


  String diaTemperaturaMinima(Map <String, double> temperaturas){
    String diaMin= "";
    double tempMin= temperaturaMaxima(temperaturas);
      // Recorro el mapa para calcular el dia que ha tenido la temperatura maxima
    temperaturas.forEach((dia, temp) {
      if (temp < tempMin) {
        diaMin = dia;
      }
    });
    return diaMin;
  }

    double temperaturaMinima(Map <String, double> temperaturas){
      double tempMin= temperaturaMaxima(temperaturas);
      // Recorro el mapa para calcular los valores
      temperaturas.forEach((dia, temp) {
        if (temp < tempMin) {
          tempMin=temp;
        }
      });
      return  tempMin;
    }

  double temperaturaMedia(Map<String, double> temperaturas){
    double suma = 0.00;
      // Recorro el mapa para calcular los valores
    temperaturas.forEach((dia, temp) {
      suma=suma + temp;
    });

    int longitud = temperaturas.length;
    double media = (suma / longitud).roundToDouble();

    return media;
  }

  print("La temperatura máxima registrada fue el dia ${diaTemperaturaMaxima(temperaturas)} y han sido: ${temperaturaMaxima(temperaturas)} grados");
  print("La temperatura máxima registrada fue el dia ${diaTemperaturaMinima(temperaturas)} y han sido: ${temperaturaMinima(temperaturas)} grados");
  print("La temperatura media registrada ha sido: ${temperaturaMedia(temperaturas)}");
}