import 'package:desafio_dart/validations/name_validation.dart';
import 'package:test/test.dart';

void main() {
  // Caminho Errado

  test('the name field must return true or empty', () {
    final name = NameValidation.nameValidation(name: '');
    expect(name, false);
  });

  test('the name field must return wrong', () {
    final name = NameValidation.nameValidation(name: 'An');
    expect(name, false);
  });

  test('the name field must return wrong because it has less than 3 characters', () {
    final name = NameValidation.nameValidation(name: 'Ana');
    expect(name, false);
  });

  test('the name field must return wrong because it contains number', () {
    final name = NameValidation.nameValidation(name: 'Ana Whatever 2');
    expect(name, false);
  });

  // Caminho Certo

  test('the name field must return true', () {
    final name = NameValidation.nameValidation(name: 'Ana Whatever');
    expect(name, true);
  });
}
