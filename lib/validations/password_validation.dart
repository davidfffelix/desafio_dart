class PasswordValidation {
  static bool validation({
    required String password,
  }) {
    if (!RegExp(r'^[0-9]{8}$').hasMatch(password)) {
      print('Incorrect password.');
      return false;
    }
    return true;
  }
}

// Válidos:
//   - 01234567  

// Inválidos:
//   - 1234567
//   - 123456789
//   - as#%as12
