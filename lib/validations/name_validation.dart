class NameValidation {
  static String? nameValidation({
    String? name,
  }) {
    if (name == null || name.trim().isEmpty) {
      return 'Enter with your name.';
    }
    if (!RegExp(r'^([A-Z][a-z]{2,}\ ?([A-Z][a-z]{7,}))$').hasMatch(name)) {
      return 'Incorrect name.';
    }
    return null;
  }
}

// Nome Completo
// Válidos:

// Ana Whatever
// Inválidos:

// An
// Ana
// Ana Whatever 2