import 'package:desafio_dart/validations/name_validation.dart';
import 'package:test/test.dart';

void main() {

  // Caminho Infeliz
  test('name incorrect ...', () async {
    final name = NameValidation.isNameValidation(name: 'An');
    expect(name, false);
  });

  test('name validation ...', () async {
    final name = NameValidation.isNameValidation(name: 'Ana');
    expect(name, false);
  });

  test('validation ...', () async {
    final name = NameValidation.isNameValidation(name: 'Ana Whatever 2');
    expect(name, false);
  });

  // Caminho Feliz

  test('validation correct ...', () async {
    final name = NameValidation.isNameValidation(name: 'Ana Whatever');
    expect(name, true);
  });

  

}
