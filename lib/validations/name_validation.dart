class NameValidation {
  static String? nameValidation({
    String? name,
  }) {
    if (name == null || name.trim().isEmpty) {
      return 'Enter with your name.';
    }
    if (!RegExp(r'^([A-Za-z]{3,}\ ?([A-Z][a-z]{3,})\ ?([A-Za-z]{0,}))$').hasMatch(name)) {
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