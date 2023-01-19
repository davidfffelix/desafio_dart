import 'package:desafio_dart/validations/monthly_income.dart';
import 'package:test/test.dart';

void main() {
  // Caminho Errado

  test('the monthly income must return true or empty', () {
    final telephone = MonthlyIncome.validation(income: '');
    expect(telephone, false);
  });

  test('the monthly income field must return wrong because it contains a negative number', () {
    final telephone = MonthlyIncome.validation(income: '-0.01');
    expect(telephone, false);
  });

  // Caminho Correto
  test('the monthly income must return null', () {
    final telephone = MonthlyIncome.validation(income: null);
    expect(telephone, null);
  });

  test('the monthly income field must return null because the was filled in correctly', () {
    final telephone = MonthlyIncome.validation(income: '0.01');
    expect(telephone, null);
  });

  test('the monthly income field must return wrong because it contains a negative number', () {
    final telephone = MonthlyIncome.validation(income: '100.01');
    expect(telephone, null);
  });
}
