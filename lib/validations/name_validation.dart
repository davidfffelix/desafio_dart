class NameValidation {
  static bool isNameValidation({
    required String name,
  }) {
    
    if (!RegExp(r'^([A-Za-záã]{3,}) ([A-Z][a-z]{3,}) ?([A-Za-z]{0,})$').hasMatch(name)) {
      print('Incorrect name.');
      return false;
    }
    return true;
  }
}


// Nome Completo
// Válidos:

// Ana Whatever


// Inválidos:

// An
// Ana
// Ana Whatever 2