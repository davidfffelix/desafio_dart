import 'package:desafio_dart/validations/cpf_validation.dart';
import 'package:test/test.dart';

void main() {
  // Caminho Errado
  test('the CPF field must return true or empty', () {
    final name = CpfValidation.validation(cpf: '');
    expect(name, false);
  });

  test('the CPF field must faltam números', () {
    final name = CpfValidation.validation(cpf: '');
    expect(name, false);
  });

  test('the CPF field must return tru kk', () {
    final name = CpfValidation.validation(cpf: '042.427.230-94');
    expect(name, false);
  });

  test('the CPF field must  true', () {
    final name = CpfValidation.validation(cpf: '358.768.060-09');
    expect(name, false);
  });

  test('the CPF field must return ', () {
    final name = CpfValidation.validation(cpf: '595.956.930-34');
    expect(name, false);
  });

  // Caminho Certo

  test('the CPF field correto', () {
    final name = CpfValidation.validation(cpf: '12344477700');
    expect(name, true);
  });

  test('the CPF field must return dadadad', () {
    final name = CpfValidation.validation(cpf: '049.427.230-94');
    expect(name, true);
  });

  test('the CPF field must return dad', () {
    final name = CpfValidation.validation(cpf: '358.760.060-09');
    expect(name, true);
  });

  test('the CPF field must return yyuy', () {
    final name = CpfValidation.validation(cpf: '595.956.630-34');
    expect(name, true);
  });
}
