class EmailValidation {
  static String? emailValidator({
    String? email, // Parâmetro da função
  }) {
    if (email == null || email.trim().isEmpty) {
      return 'Enter with your email';
    }
    if (!RegExp(r'^[a-zA-Z][a-zA-Z0-9_.]+@(outlook|gmail|hotmail)(\.com)(\.br)?$').hasMatch(email)) {
      return 'Incorrect e-mail.';
    }
    return null;
  }
}

// Válidos:
//   - whatever@outlook.com.br
//   - what_ever@outlook.com
//   - whatever@gmail.com
//   - what.ever@gmail.com.br
//   - what.ever@hotmail.com
//   - whatever@hotmail.com.br
//   - Whatever@hotmail.com.br
//   - w23hatever@hotmail.com.br

// Inválidos:
//   - whatever@gov.uk
//   - 1whatever@outlook.com
//   - whatever$#@!@gmail.com
//   - whatever@outlook2com1br
