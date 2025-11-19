// En este archivo de la carpeta bin yo pruebo la clase BanderaFranjas
// del ejercicio 3 usando MapEquality.
import 'package:dart_relacion4/bandera_franjas_eje3.dart';

void main() {
  // Creo tres banderas para hacer pruebas.
  BanderaFranjas bandera1 = BanderaFranjas(
    orientacion: "horizontal",
    franjasColores: ["rojo", "amarillo", "rojo"],
    nombrePais: "España",
  );

  BanderaFranjas bandera2 = BanderaFranjas(
    orientacion: "vertical",
    franjasColores: ["azul", "blanco", "rojo"],
    nombrePais: "Francia",
  );

  BanderaFranjas bandera3 = BanderaFranjas(
    orientacion: "vertical",
    franjasColores: ["rojo", "amarillo", "rojo"]
  );

  print("- Muestro la bandera");
  bandera1.mostrarBandera();

  print("- Indico si son iguales");
  bool banderasIguales = bandera1.sonIdenticas(bandera2);
  print("¿Bandera 1 y bandera 2 son idénticas? $banderasIguales");

  print("- Indico si son las mismas franjas pero con diferente orientacion");
  bool mismasFranjasDistintaOrientacion =
      bandera1.mismasFranjasDistintaOrientacion(bandera3);
  print(
      "¿Bandera 1 y bandera 3 tienen mismas franjas en distinta orientación? $mismasFranjasDistintaOrientacion");

  print("- Invierto colores de bandera 1");
  bandera1.invertirColores();
  bandera1.mostrarBandera();

  print("- Invierto orientación de bandera 3");
  bandera3.invertirOrientacion();
  bandera3.mostrarBandera();


  print("- Muestro la informacion de la bandera");
  print(bandera1);
}
