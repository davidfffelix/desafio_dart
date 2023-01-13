class TelephoneValidation {
  static String? telephoneValidation({
    String? telephone,
  }) {
    if (telephone == null || telephone.trim().isEmpty) {
      return 'Enter with your telephone';
    }
    if (!RegExp(r'^[(]?[0-9]{2}[)]?\ ?([0-9]{5}\-?[0-9]{4})$').hasMatch(telephone)) {
      return 'Incorrect telephone.';
    }
    return null;
  }
}
