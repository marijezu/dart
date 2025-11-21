/*
9- En el ejercicio anterior, no estamos teniendo en cuenta si está permitido que una cuenta
tenga el saldo negativo (cuenta de crédito) o no (cuenta de débito). En realidad, todo es
prácticamente igual, salvo que en la de crédito, hay un límite máximo para el saldo negativo,
y en la de débito, no se puede extraer dinero si el saldo no es suficiente.
Reestructura el ejercicio y define la clase CuentaBancaria como abstracta e instancia dos
clases hijas CuentaDebito y CuentaCredito que tengan todo esto en cuenta en su
operatoria.
Incluye un main que defina un objeto de cada tipo y pruebe que se ejecuta correctamente.
*/

abstract class CuentaBancaria {
  // Aquí yo guardo el número de cuenta.
  final String numeroCuenta;

  // Aquí yo guardo el nombre del titular.
  final String nombreTitular;

  // Aquí yo guardo el saldo actual.
  double saldo;

  // Aquí yo guardo el número de operaciones realizadas.
  int numeroOperaciones;

  // En este constructor yo recibo el número de cuenta y el titular.
  CuentaBancaria({
    required this.numeroCuenta,
    required this.nombreTitular,
  })  : saldo = 0.0,
        numeroOperaciones = 0;

  // Este método lo implemento aquí porque es igual para todos:
  // simplemente suma dinero.
  void depositar(double cantidad) {
    bool cantidadValida = cantidad > 0;

    if (cantidadValida) {
      saldo = saldo + cantidad;
      numeroOperaciones = numeroOperaciones + 1;
    }
  }

  // Aquí yo declaro el método extraer pero no hago nada.
  // Las clases hijas están obligadas a implementarlo.
  void extraer(double cantidad);

  // Aquí yo declaro el método transferir pero no hago nada.
  // Las clases hijas también deben implementarlo.
  void transferir(double cantidad, CuentaBancaria destino);

  @override
  String toString() {
    String texto =
        "Cuenta(numero: $numeroCuenta, titular: $nombreTitular, saldo: $saldo, operaciones: $numeroOperaciones)";
    return texto;
  }
}

// Esta clase representa una cuenta de débito.
// En esta cuenta yo no permito que el saldo quede en negativo.
class CuentaDebito extends CuentaBancaria {
  CuentaDebito({
    required String numeroCuenta,
    required String nombreTitular,
  }) : super(
          numeroCuenta: numeroCuenta,
          nombreTitular: nombreTitular,
        );

  // Aquí yo implemento el método extraer de forma específica
  // para una cuenta de débito.
  @override
  void extraer(double cantidad) {
    bool cantidadValida = cantidad > 0;

    if (cantidadValida) {
      double saldoFinal = saldo - cantidad;

      // En una cuenta de débito no permito saldo negativo.
      bool permitido = saldoFinal >= 0.0;

      if (permitido) {
        saldo = saldoFinal;
        numeroOperaciones = numeroOperaciones + 1;
      } else {
        print(
            "No se puede extraer $cantidad de la cuenta de débito $numeroCuenta (titular: $nombreTitular). Saldo insuficiente.");
      }
    }
  }

  // Aquí yo implemento el método transferir para la cuenta de débito.
  @override
  void transferir(double cantidad, CuentaBancaria destino) {
    bool cantidadValida = cantidad > 0;

    if (cantidadValida) {
      double saldoFinal = saldo - cantidad;
      bool permitido = saldoFinal >= 0.0;

      if (permitido) {
        // Resto el dinero de esta cuenta.
        saldo = saldoFinal;
        numeroOperaciones = numeroOperaciones + 1;

        // Sumo el dinero en la cuenta destino.
        destino.saldo = destino.saldo + cantidad;
        destino.numeroOperaciones = destino.numeroOperaciones + 1;
      } else {
        print(
            "No se puede transferir $cantidad desde la cuenta de débito $numeroCuenta (titular: $nombreTitular). Saldo insuficiente.");
      }
    }
  }

  @override
  String toString() {
    String texto = "CuentaDebito -> ${super.toString()}";
    return texto;
  }
}

// Esta clase representa una cuenta de crédito.
// Aquí yo permito que el saldo quede en negativo hasta un límite.
class CuentaCredito extends CuentaBancaria {
  // Aquí yo guardo el límite de crédito permitido.
  final double limiteCredito;

  CuentaCredito({
    required String numeroCuenta,
    required String nombreTitular,
    required this.limiteCredito,
  }) : super(
          numeroCuenta: numeroCuenta,
          nombreTitular: nombreTitular,
        );

  @override
  void extraer(double cantidad) {
    bool cantidadValida = cantidad > 0;

    if (cantidadValida) {
      double saldoFinal = saldo - cantidad;
      double saldoMinimoPermitido = -limiteCredito;

      // En una cuenta de crédito el saldo puede ser negativo,
      // pero no menor que -limiteCredito.
      bool permitido = saldoFinal >= saldoMinimoPermitido;

      if (permitido) {
        saldo = saldoFinal;
        numeroOperaciones = numeroOperaciones + 1;
      } else {
        print(
            "No se puede extraer $cantidad de la cuenta de crédito $numeroCuenta (titular: $nombreTitular). Se supera el límite de crédito.");
      }
    }
  }

  @override
  void transferir(double cantidad, CuentaBancaria destino) {
    bool cantidadValida = cantidad > 0;

    if (cantidadValida) {
      double saldoFinal = saldo - cantidad;
      double saldoMinimoPermitido = -limiteCredito;

      bool permitido = saldoFinal >= saldoMinimoPermitido;

      if (permitido) {
        // Resto el dinero de esta cuenta.
        saldo = saldoFinal;
        numeroOperaciones = numeroOperaciones + 1;

        // Sumo el dinero en la cuenta destino.
        destino.saldo = destino.saldo + cantidad;
        destino.numeroOperaciones = destino.numeroOperaciones + 1;
      } else {
        print(
            "No se puede transferir $cantidad desde la cuenta de crédito $numeroCuenta (titular: $nombreTitular). Se supera el límite de crédito.");
      }
    }
  }

  @override
  String toString() {
    String texto =
        "CuentaCredito(limiteCredito: $limiteCredito) -> ${super.toString()}";
    return texto;
  }
}
