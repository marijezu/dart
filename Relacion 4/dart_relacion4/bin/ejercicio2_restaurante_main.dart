import 'package:dart_relacion4/restaurante_ej2.dart';

void main() {
  Restaurant restaurante1 = Restaurant(
    name: "Iberia",
    cuisine: "Georgiana",
    ratings: [4.6, 4.9, 4.5],
  );

  print("Número de ratings iniciales: ${restaurante1.obtenerNumeroRatings()}");

  print("Añado un rating de 5.0");
  restaurante1.anadirRating(5.0);

  print("Añado varios ratings: 4.0, 4.5");
  restaurante1.anadirVariosRatings([4.0, 4.5]);

  print("Número de ratings después de añadir: ${restaurante1.obtenerNumeroRatings()}");

  double media = restaurante1.calcularRatingMedio();
  print("Rating medio del restaurante: $media");

  print(restaurante1.toString());
}
