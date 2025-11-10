/*20- Haz un programa Dart que realice estadísticas sobre el tiempo. Declararás un Map que
contenga como claves los días de la semana y como valores las temperaturas máximas.
Calcula y muestra la mayor y la menor de las máximas, así como los días en que se
produjeron. Calcula también la media aritmética de las máximas.*/

void main() {
  // Declaro el mapa con días y temperaturas máximas
  Map<String, double> temperaturas = {
    "Lunes": 22.5,
    "Martes": 25.3,
    "Miércoles": 21.0,
    "Jueves": 27.8,
    "Viernes": 24.6,
    "Sábado": 30.2,
    "Domingo": 29.5
  };

  // Uso estas variables para los cálculos
  String diaMax = "";
  String diaMin = "";
  double maxTemp = -9999;
  double minTemp = 9999;
  double suma = 0;

  // Recorro el mapa para calcular los valores
  temperaturas.forEach((dia, temp) {
    //Voy sumando todas las temperaturas
    suma += temp;

    // compruebo si es la mayor
    if (temp > maxTemp) {
      maxTemp = temp;
      diaMax = dia;
    }

    // compruebo si es la menor
    if (temp < minTemp) {
      minTemp = temp;
      diaMin = dia;
    }
  });

  // Calculo la media
  double media = suma / temperaturas.length;

//Muestro todas las temperaturas
print("Temperaturas máximas de la semana:");
for (var dia in temperaturas.keys) {
  print("$dia: ${temperaturas[dia]} ºC");
}


  print("\Las estadísticas son :");
  print("La temperatura más alta fue $maxTemp ºC el $diaMax");
  print("La temperatura más baja fue $minTemp ºC el $diaMin");
  print("La temperatura media semanal fue $media ºC");
}
