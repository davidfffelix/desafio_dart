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
