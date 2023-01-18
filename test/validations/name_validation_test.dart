import 'package:desafio_dart/validations/name_validation.dart';
import 'package:test/test.dart';

void main() {
  // Caminho Errado

  test('name incorrect1 ...', () async {
    final name = NameValidation.nameValidation(name: '');
    expect(name, false);
  });

  test('name incorrect ...', () async {
    final name = NameValidation.nameValidation(name: 'An');
    expect(name, false);
  });

  test('name validation ...', () async {
    final name = NameValidation.nameValidation(name: 'Ana');
    expect(name, false);
  });

  test('validation ...', () async {
    final name = NameValidation.nameValidation(name: 'Ana Whatever 2');
    expect(name, false);
  });

  // Caminho Certo

  test('validation correct ...', () async {
    final name = NameValidation.nameValidation(name: 'Ana Whatever');
    expect(name, true);
  });
}
