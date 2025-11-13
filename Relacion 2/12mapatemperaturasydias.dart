/*12- Soluciona el problema anterior mediante la declaración de un Map y haciendo que cada
función, en lugar de devolver valores, muestran los resultados por pantalla ellas mismas.*/


  //Asigno como tempMax la primera temperatura
  //temperaturas.values devuelve solo los valores del mapa

  //Tambien se puede hacer asi, convirtiendo en una lista y cogiendo el 1er valor
  //double tempMax = temperaturas.values.toList()[0];

  void mostrarTemperaturaMaxima(Map<String, double> temperaturas) {
  bool hayDatos = true;
  double tempMax = 0;
  String diaMax = "";

  if (temperaturas.isEmpty) {
    hayDatos = false;
  } else {
  //Asigno como tempMax la primera temperatura
  //temperaturas.values devuelve solo los valores del mapa
  //temperaturas.keys devuelve solo los valores de las clave
    tempMax = temperaturas.values.first;
  //Tambien se puede hacer asi, convirtiendo en una lista y cogiendo el 1er valor
  //double tempMax = temperaturas.values.toList()[0];

    temperaturas.forEach((dia, temp) {
      if (temp > tempMax) {
        tempMax = temp;
        diaMax = dia;
      }
    });
  }

  if (hayDatos) {
    print("La temperatura máxima fue de $tempMax grados el $diaMax");
  } else {
    print("No hay datos de temperatura disponibles.");
  }
}

void mostrarTemperaturaMinima(Map<String, double> temperaturas) {
  bool hayDatos = true;
  double tempMin = 0;
  String diaMin = "";

  if (temperaturas.isEmpty) {
    hayDatos = false;
  } else {
    tempMin = temperaturas.values.first;

    temperaturas.forEach((dia, temp) {
      if (temp < tempMin) {
        tempMin = temp;
        diaMin = dia;
      }
    });
  }

  if (hayDatos) {
    print("La temperatura mínima fue de $tempMin grados el $diaMin");
  } else {
    print("No hay datos de temperatura disponibles.");
  }
}

void mostrarTemperaturaMedia(Map<String, double> temperaturas) {
  bool hayDatos = true;
  double suma = 0;
  double media = 0;

  if (temperaturas.isEmpty) {
    hayDatos = false;
  } else {
    temperaturas.forEach((dia, temp) {
      suma = suma + temp;
    });
    media = suma / temperaturas.length;
    //Redondeo la media a 2 decimales
    media = (media * 100).roundToDouble() / 100;
  }

  if (hayDatos) {
    print("La temperatura media ha sido de ${media} grados");
  } else {
    print("No hay datos de temperatura disponibles.");
  }
}

void main() {
  Map<String, double> temperaturas = {
    "Día 1": 35,
    "Día 2": 40,
    "Día 3": 42,
    "Día 4": 45,
    "Día 5": 39,
    "Día 6": 46
  };

  print("Mapa de temperaturas: $temperaturas\n");

  mostrarTemperaturaMaxima(temperaturas);
  mostrarTemperaturaMinima(temperaturas);
  mostrarTemperaturaMedia(temperaturas);
}

