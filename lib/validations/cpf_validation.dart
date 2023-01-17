class CpfValidation {
  static String? cpfValidation({String? cpf}) {
    if (cpf == null || cpf.trim().isEmpty) {
      return 'Enter with your CPF';
    }
    if (!RegExp(r'^([0-9]{3})\.([0-9]{3})\.([0-9]{3})\-([0-9]{2})$').hasMatch(cpf)) {
      return 'CPF with invalid format';
    }
    String cpfNumbers = cpf.replaceAll(RegExp(r'[.-]'), '');
    if (!tenthDigitChecker(cpfNumbers)) {
      // Ele espera um valor convertido e com replaceAll acontece essa conversão.
      // Inverte o retorno do método que é true
      return 'CPF inválido';
    }
    if (!eleventhDigitChecker(cpfNumbers)) {
      // Inverte o retorno do método que é true
      return 'CPF inválido';
    }
  }

  // 13230430732
  // 132.304.307-32
  // Porque ele espera um valor inteiro e acabando chegando uma String com o .-.
  // Por isso, o replaceAll
  static bool tenthDigitChecker(String cpf) {
    // Pegar o 1° dígito e multiplicar por 10

    int firstDigit = int.parse(cpf[0]);
    int resultFirst = firstDigit * 10;
    print(resultFirst);

    int secondDigit = int.parse(cpf[1]);
    int resultSecond = secondDigit * 9;
    print(resultSecond);

    int thirdDigit = int.parse(cpf[2]);
    int resultThird = thirdDigit * 8;
    print(resultThird);

    int fourthDigit = int.parse(cpf[3]);
    int resultFourth = fourthDigit * 7;
    print(resultFourth);

    int fifthDigit = int.parse(cpf[4]);
    int resultFifth = fifthDigit * 6;
    print(resultFifth);

    int sixthDigit = int.parse(cpf[5]);
    int resultSixth = sixthDigit * 5;
    print(resultSixth);

    int seventhDigit = int.parse(cpf[6]);
    int resultSeventh = seventhDigit * 4;
    print(resultSeventh);

    int eighthDigit = int.parse(cpf[7]);
    int resultEighth = eighthDigit * 3;
    print(resultEighth);

    int ninthDigit = int.parse(cpf[8]);
    int resultNinth = ninthDigit * 2;
    print(resultNinth);

    int totalResult = (resultFirst + resultSecond + resultThird + resultFourth + resultFifth + resultSixth + resultSeventh + resultEighth + resultNinth);
    print('Resultado da multiplicação dos números comuns: $totalResult.');

    int multiResult = totalResult * 10;
    print('Resultado do passo 1: $multiResult.');

    int tenthDigit = multiResult % 11; // Resto

    if (tenthDigit == 10) {
      // Resto
      tenthDigit = 0;
    }

    if (tenthDigit != int.parse(cpf[9])) {
      return false;
    } else {
      return true;
    }
  }

  static bool eleventhDigitChecker(String cpf) {
    int firstDigit = int.parse(cpf[0]);
    int resultFirst = firstDigit * 11;
    print(resultFirst);

    int secondDigit = int.parse(cpf[1]);
    int resultSecond = secondDigit * 10;
    print(resultSecond);

    int thirdDigit = int.parse(cpf[2]);
    int resultThird = thirdDigit * 9;
    print(resultThird);

    int fourthDigit = int.parse(cpf[3]);
    int resultFourth = fourthDigit * 8;
    print(resultFourth);

    int fifthDigit = int.parse(cpf[4]);
    int resultFifth = fifthDigit * 7;
    print(resultFifth);

    int sixthDigit = int.parse(cpf[5]);
    int resultSixth = sixthDigit * 6;
    print(resultSixth);

    int seventhDigit = int.parse(cpf[6]);
    int resultSeventh = seventhDigit * 5;
    print(resultSeventh);

    int eighthDigit = int.parse(cpf[7]);
    int resultEighth = eighthDigit * 4;
    print(resultEighth);

    int ninthDigit = int.parse(cpf[8]);
    int resultNinth = ninthDigit * 3;
    print(resultNinth);

    int tenthDigit = int.parse(cpf[9]);
    int resultTenth = tenthDigit * 2;
    print(resultTenth);

    int totalResult = (resultFirst + resultSecond + resultThird + resultFourth + resultFifth + resultSixth + resultSeventh + resultEighth + resultNinth + resultTenth);
    print('Resultado da multiplicação dos números comuns: $totalResult.');

    int multiResult = totalResult * 10;
    print('Resultado do passo 1: $multiResult.');

    int eleventhDigit = multiResult % 11;

    if (eleventhDigit == 10) {
      eleventhDigit = 0;
    }

    if (eleventhDigit != int.parse(cpf[10])) {
      return false;
    } else {
      return true;
    }
  }
}
