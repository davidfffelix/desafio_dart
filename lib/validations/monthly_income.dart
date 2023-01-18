class MonthlyIncome {
  static String? validation({String? income}) {
    if (income == null) {
      return null;
    }
    if (!RegExp(r'^[0-9]+[.][0-9]{2}$').hasMatch(income)) {
      return 'Incorrect monthly income.';
    }
    return null;
  }
}

// ## Renda Mensal
// Válidos:
// - 0.01
// - null

// Inválidos:
// - -0.01