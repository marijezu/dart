// En este archivo de la carpeta test yo creo los tests
// para el ejercicio 9: CuentaDebito y CuentaCredito (con herencia).

import 'package:test/test.dart';
import 'package:dart_relacion4/cuenta_bancaria_hereda_ej9.dart';

void main() {
  group("Tests de CuentaDebito", () {

    test("Ingreso en cuenta de débito incrementa saldo y operaciones", () {
      CuentaDebito cuenta = CuentaDebito(
        numeroCuenta: "ES11",
        nombreTitular: "Juanma",
      );

      cuenta.depositar(200.0);

      expect(cuenta.saldo, equals(200.0));
      expect(cuenta.numeroOperaciones, equals(1));
    });

    test("Extracción permitida en débito (saldo suficiente)", () {
      CuentaDebito cuenta = CuentaDebito(
        numeroCuenta: "ES11",
        nombreTitular: "Juanma",
      );

      cuenta.depositar(300.0);
      cuenta.extraer(100.0);

      expect(cuenta.saldo, equals(200.0));
      expect(cuenta.numeroOperaciones, equals(2)); // 1 depósito + 1 extracción
    });

    test("Extracción NO permitida en débito (no puede quedar negativo)", () {
      CuentaDebito cuenta = CuentaDebito(
        numeroCuenta: "ES11",
        nombreTitular: "Juanma",
      );

      cuenta.depositar(100.0);
      cuenta.extraer(150.0);

      expect(cuenta.saldo, equals(100.0)); // no cambia
      expect(cuenta.numeroOperaciones, equals(1)); // solo el depósito
    });
  });

  // ------------------------------------------------------------------------

  group("Tests de CuentaCredito", () {

    test("Ingreso en cuenta de crédito incrementa saldo y operaciones", () {
      CuentaCredito cuenta = CuentaCredito(
        numeroCuenta: "ES22",
        nombreTitular: "Ana",
        limiteCredito: 500.0,
      );

      cuenta.depositar(100.0);

      expect(cuenta.saldo, equals(100.0));
      expect(cuenta.numeroOperaciones, equals(1));
    });

    test("Extracción permitida en crédito (entra en negativo dentro del límite)", () {
      CuentaCredito cuenta = CuentaCredito(
        numeroCuenta: "ES22",
        nombreTitular: "Ana",
        limiteCredito: 500.0,
      );

      cuenta.depositar(100.0);
      cuenta.extraer(400.0); // saldo final = -300 → permitido

      expect(cuenta.saldo, equals(-300.0));
      expect(cuenta.numeroOperaciones, equals(2));
    });

    test("Extracción NO permitida en crédito (supera límite negativo)", () {
      CuentaCredito cuenta = CuentaCredito(
        numeroCuenta: "ES22",
        nombreTitular: "Ana",
        limiteCredito: 500.0,
      );

      cuenta.depositar(100.0);
      cuenta.extraer(700.0); // saldo final = 100 - 700 = -600 (menor que -500)

      expect(cuenta.saldo, equals(100.0)); // no cambia
      expect(cuenta.numeroOperaciones, equals(1));
    });
  });

  // ------------------------------------------------------------------------

  group("Tests de transferencias", () {

    test("Transferencia permitida de débito a crédito", () {
      CuentaDebito debito = CuentaDebito(
        numeroCuenta: "ES11",
        nombreTitular: "Juanma",
      );

      CuentaCredito credito = CuentaCredito(
        numeroCuenta: "ES22",
        nombreTitular: "Ana",
        limiteCredito: 500.0,
      );

      debito.depositar(300.0);
      debito.transferir(200.0, credito);

      expect(debito.saldo, equals(100.0));
      expect(credito.saldo, equals(200.0));

      expect(debito.numeroOperaciones, equals(2)); // 1 ingreso + 1 transferencia
      expect(credito.numeroOperaciones, equals(1)); // solo recibe dinero
    });

    test("Transferencia NO permitida desde débito (dejaría saldo negativo)", () {
      CuentaDebito debito = CuentaDebito(
        numeroCuenta: "ES11",
        nombreTitular: "Juanma",
      );

      CuentaCredito credito = CuentaCredito(
        numeroCuenta: "ES22",
        nombreTitular: "Ana",
        limiteCredito: 500.0,
      );

      debito.depositar(100.0);
      debito.transferir(200.0, credito);

      expect(debito.saldo, equals(100.0)); // no cambia
      expect(credito.saldo, equals(0.0)); // tampoco cambia
      expect(debito.numeroOperaciones, equals(1)); // solo depósito
      expect(credito.numeroOperaciones, equals(0));
    });

    test("Transferencia permitida desde crédito aunque quede negativo", () {
      CuentaCredito credito = CuentaCredito(
        numeroCuenta: "ES22",
        nombreTitular: "Ana",
        limiteCredito: 500.0,
      );

      CuentaDebito debito = CuentaDebito(
        numeroCuenta: "ES11",
        nombreTitular: "Juanma",
      );

      credito.depositar(100.0);
      credito.transferir(300.0, debito); // saldo final = -200 → permitido

      expect(credito.saldo, equals(-200.0));
      expect(debito.saldo, equals(300.0));

      expect(credito.numeroOperaciones, equals(2));
      expect(debito.numeroOperaciones, equals(1));
    });
  });
}
