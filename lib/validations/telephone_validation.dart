class TelephoneValidation {
  static bool validation({
    required String telephone,
  }) {
    if (!RegExp(r'^\(?[0-9]{2}\)? ?([0-9]{5})\-?([0-9]{4})$').hasMatch(telephone)) {
      print('Incorrect telephone.');
      return false;
    }
    return true;
  }
}

// Válidos:
//   - 12123451234
//   - 12 123451234
//   - 12 12345-1234
//   - (12) 12345-1234

// Inválidos:
//   - 123451234
//   - 12341234
//   - 1212341234