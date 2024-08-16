import 'package:flutter_test/flutter_test.dart';
import 'dart:io';
import 'dart:math';
import 'package:flutter_application_1/dominio/cpf.dart';

void main() {
  group('Validar CPF', () {
    test('Validação de CPF', () {
      expect(CPF('096.904.639-18').eDigitosCorretos(), true);
    });
  });
}
