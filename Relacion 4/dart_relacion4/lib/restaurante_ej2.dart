// Ejercicio 2
/* Dada una clase, añade nuevas funcionalidades para que se pueda: 
● obtener el número de ratings (los ratings son valoraciones)
● añadir otro rating 
● añadir otros ratings (más de uno) 
● calcular el rating medio */

class Restaurant {
  // Defino los atributos de la clase.
  final String name;
  final String cuisine;
  final List<double> ratings;

  // En este constructor yo inicializo los atributos.
  // En el enunciado aparece el constructor como const pero tengo que quitarselo 
  // para poder modificar la lista de ratings luego como indica el ejercicio.
  Restaurant({
    required this.name,
    required this.cuisine,
    required this.ratings,
  });

  // Este metodo devuelve el número de valoraciones que tiene el restaurante.
  int obtenerNumeroRatings() {
    return ratings.length;
  }

  // Este metodo anade una nueva valoracion a la lista
  void anadirRating(double nuevoRating) {
    // Añado el nuevo rating a la lista existente.
    ratings.add(nuevoRating);
  }

  // En este método yo añado varias valoraciones de golpe.
  void anadirVariosRatings(List<double> nuevosRatings) {
    // Añado todos los ratings de la lista que recibo.
    ratings.addAll(nuevosRatings);
  }

  // En este método yo calculo la media de las valoraciones.
  double calcularRatingMedio() {
    double resultado = 0.0;

    // Si la lista esta vacia ratings.isNotEmpty seria false y devuelve directamente como resultado 0
    bool hayRatings = ratings.isNotEmpty;

    if (hayRatings) {
      double suma = 0.0;

      // Sumo todas las valoraciones
      for (double r in ratings) {
        suma = suma + r;
      }
      // Calculo la media y la guardo en resultado
      resultado = suma / ratings.length;
    }
    return resultado;
  }

  // Aquí sobrescribo toString() para ver la información del restaurante.
  @override
  String toString() {
    // Yo muestro el nombre, el tipo de cocina y el rating medio.
    return "La informacion del restaurante es nombre: $name, cocina: $cuisine, valoraciones: $ratings, media: ${calcularRatingMedio()})";
  }
}
