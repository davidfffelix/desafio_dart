class PasswordValidation {
  static String? passwordValidation({
    String? password,
  }) {
    if (password == null || password.trim().isEmpty) {
      return 'Enter with your password.';
    }
    if (!RegExp(r'^[0-9]{8}$').hasMatch(password)) {
      return 'Incorrect password.';
    }
    return null;
  }
}

// Válidos:
//   - 01234567  

// Inválidos:
//   - 1234567
//   - 123456789
//   - as#%as12
