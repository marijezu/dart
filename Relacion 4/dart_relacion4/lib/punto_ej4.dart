/* 
4- Define una clase Punto. Un punto tiene tres coordenadas espaciales (x, y, z) que lo 
definen. Además debe tener: 
● el método constructor 
● un método que permita la traslación en el valor de x (horizontal) 
● otro que permita la traslación en el valor de y (vertical) 
● otro que permita la traslación en el valor de z (cota) 
● un método toString que lo muestre de la siguiente forma: (x, y, z) 
*/

class Punto {
  // Defino los atributos del punto.
  double x;
  double y;
  double z;

  // Defino el constructor 
  Punto(this.x, this.y, this.z);

  // Este metodo traslada el punto en el eje X (horizontal).
  void trasladarHorizontal(double desplazamientoX) {
    x = x + desplazamientoX;
  }

  // En este método traslado el punto en el eje Y (vertical).
  void trasladarVertical(double desplazamientoY) {
    y = y + desplazamientoY;
  }

  // Este método traslada el punto en el eje Z (cota).
  void trasladarCota(double desplazamientoZ) {
    z = z + desplazamientoZ;
  }

  // Muestro los valores del punto
  @override
  String toString() {
    String texto = "($x, $y, $z)";
    return texto;
  }
}
