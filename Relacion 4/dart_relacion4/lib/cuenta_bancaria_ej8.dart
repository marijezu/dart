/*
8- Define una clase CuentaBancaria con los siguientes atributos:
● número de cuenta
● nombre del titular
● saldo (inicial, 0 euros)
● número de operaciones (inicial, 0)
Define también las siguientes operaciones:
● constructor
● toString
● depositar dinero
● extraer dinero
● transferir dinero

*/

class CuentaBancaria {
 
  final String numeroCuenta;
  final String nombreTitular;
  double saldo;
  int numeroOperaciones;

  // Creo el constructor
  // El saldo y el número de operaciones los inicializo yo a 0 como indica el enunciado
  CuentaBancaria({
    required this.numeroCuenta,
    required this.nombreTitular,
  })  : saldo = 0.0,
        numeroOperaciones = 0;

  // En este método ingreso dinero en la cuenta.
  void depositar(double cantidad) {
    // Solo deposito si la cantidad es positiva.
    bool cantidadValida = cantidad > 0;

    if (cantidadValida) {
      saldo = saldo + cantidad;
      numeroOperaciones = numeroOperaciones + 1;
    }
  }

  // En este método extraigo dinero de la cuenta.
  // No controlo si el saldo queda en negativo.
  void extraer(double cantidad) {
    bool cantidadValida = cantidad > 0;

    if (cantidadValida) {
      saldo = saldo - cantidad;
      numeroOperaciones = numeroOperaciones + 1;
    }
  }

  // En este método transfiero dinero desde esta cuenta a otra cuenta.
  void transferir(double cantidad, CuentaBancaria destino) {
    bool cantidadValida = cantidad > 0;

    if (cantidadValida) {
      // Aquí resto el dinero de mi cuenta.
      saldo = saldo - cantidad;
      numeroOperaciones = numeroOperaciones + 1;

      // Aquí sumo el dinero en la cuenta destino.
      destino.saldo = destino.saldo + cantidad;
      destino.numeroOperaciones = destino.numeroOperaciones + 1;
    }
  }

  // EMuestro la informacion de la cuenta
  @override
  String toString() {
    String texto =
        "CuentaBancaria(numero: $numeroCuenta, titular: $nombreTitular, saldo: $saldo, operaciones: $numeroOperaciones)";
    return texto;
  }
}
