/*
10- Volviendo al supuesto anterior, ambas cuentas son muy parecidas, habiendo entre 
ambas una única diferencia. Intenta factorizar el código para que no sea necesaria realizar 
la jerarquía de clases. Discute los pros y contras de que el código quede así (claridad, 
concisión, mantenibilidad, etc…) 
*/
// Factorizo la lógica de débito y crédito en una sola clase.

class CuentaBancaria {

  final String numeroCuenta;
  final String nombreTitular;
  double saldo;
  int numeroOperaciones;
  //Este atributo guarda si permite la cuenta saldo negativo o no
  bool permiteSaldoNegativo;
  //Este sirve para saber el limite de salgo negativo en la cuenta (sirve para las cuentas de credito)
  double limiteSaldoNegativo;

  CuentaBancaria({
    required this.numeroCuenta,
    required this.nombreTitular,
    //Le ponemos valores por defecto
    this.permiteSaldoNegativo = false,
    this.limiteSaldoNegativo = 0.0,
    //El usuario no introduce por defecto estos atributos ya que los define la clase
  })  : saldo = 0.0,
        numeroOperaciones = 0;

  // En este método ingreso dinero en la cuenta.
  void depositar(double cantidad) {
    bool cantidadValida = cantidad > 0;

    if (cantidadValida) {
      saldo = saldo + cantidad;
      numeroOperaciones = numeroOperaciones + 1;
    }
  }

  // Este metodo lo hago provado porque solo se va a usar dentro de la clase para diferenciar la cuenta de credito y debito
  bool _puedeQuedarSaldo(double saldoFinal) {
    bool permitido = false;

    if (permiteSaldoNegativo) {
      // Si permite saldo negativo, comparo con el límite negativo.
      double saldoMinimoPermitido = -limiteSaldoNegativo;
      if (saldoFinal >= saldoMinimoPermitido) {
        permitido = true;
      }
    } else {
      // Si no permite saldo negativo, el saldo no puede ser menor que 0.
      if (saldoFinal >= 0.0) {
        permitido = true;
      }
    }

    return permitido;
  }

  // En este método yo intento extraer dinero de la cuenta.
  void extraer(double cantidad) {
    bool cantidadValida = cantidad > 0;

    if (cantidadValida) {
      double saldoFinal = saldo - cantidad;
      bool permitido = _puedeQuedarSaldo(saldoFinal);

      if (permitido) {
        saldo = saldoFinal;
        numeroOperaciones = numeroOperaciones + 1;
      } else {
        print(
            "No se puede extraer $cantidad de la cuenta $numeroCuenta (titular: $nombreTitular).");
      }
    }
  }

  // En este método intento transferir dinero desde esta cuenta a otra.
  void transferir(double cantidad, CuentaBancaria destino) {
    bool cantidadValida = cantidad > 0;

    if (cantidadValida) {
      double saldoFinal = saldo - cantidad;
      bool permitido = _puedeQuedarSaldo(saldoFinal);

      if (permitido) {
        // Resto de mi cuenta.
        saldo = saldoFinal;
        numeroOperaciones = numeroOperaciones + 1;

        // Sumo en la cuenta destino.
        destino.saldo = destino.saldo + cantidad;
        destino.numeroOperaciones = destino.numeroOperaciones + 1;
      } else {
        print(
            "No se puede transferir $cantidad desde la cuenta $numeroCuenta (titular: $nombreTitular).");
      }
    }
  }

  @override
  String toString() {
    String tipoCuenta = "Débito";
    if (permiteSaldoNegativo) {
      tipoCuenta = "Crédito (límite: $limiteSaldoNegativo)";
    }

    String texto =
        "CuentaBancaria(tipo: $tipoCuenta, numero: $numeroCuenta, titular: $nombreTitular, saldo: $saldo, operaciones: $numeroOperaciones)";
    return texto;
  }
}

