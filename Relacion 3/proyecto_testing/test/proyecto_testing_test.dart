import 'package:test/test.dart';
import 'package:proyecto_testing/validaciones.dart';

void main() {

  group('Pruebas de esColorRGB', () {
    test('Color RGB válido', () {
      expect(esColorRGB('#FFF'), true);
      expect(esColorRGB('#ff00aa'), true);
    });

    test('Color RGB inválido', () {
      expect(esColorRGB('FFF'), false);
      expect(esColorRGB('#12345'), false);
      expect(esColorRGB('#XYZ'), false);
    });
  });

  group('Pruebas de esURLValida', () {
    test('URLs válidas', () {
      expect(esURLValida('https://www.google.com'), true);
      expect(esURLValida('https://www.misitio.es'), true);
    });

    test('URLs inválidas', () {
      expect(esURLValida('http://google.com'), false);
      expect(esURLValida('https://google.com'), false);
      expect(esURLValida('https://www.google.xyz'), false);
    });
  });

  group('Pruebas de esEmailValido', () {
    test('Emails válidos', () {
      expect(esEmailValido('correo@test.com'), true);
      expect(esEmailValido('ejemplo-123@dominio.es'), true);
    });

    test('Emails inválidos', () {
      expect(esEmailValido('correo@test'), false);
      expect(esEmailValido('correo@@test.com'), false);
      expect(esEmailValido('correo@test.xyz'), false);
    });
  });

  group('Pruebas de calculoLetra', () {
    test('Cálculo correcto', () {
      expect(calculoLetra(12345678), 'Z');  
    });
  });

  group('Pruebas de esDNIValido', () {
    test('DNI válido', () {
      expect(esDNIValido('12345678Z'), true);
    });

    test('DNI inválido', () {
      expect(esDNIValido('12345678A'), false);
      expect(esDNIValido('12A45678Z'), false);
      expect(esDNIValido('1234'), false);
    });
  });
}