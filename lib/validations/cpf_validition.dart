class CPFValidation {
  // soma = 5*10;
  // 5 * 10
  // 529.982.247-25 - Valor de entrada

  primeiroDigitoVerificador('52998224725');
  bool primeiroDigitoVerificador(String cpf) {
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

    int rest = multiResult % 11;

    // if (rest == 10) {
    //   rest = 0;
    // }





    // for (int i = 0; i < cpf.length; i++) {
    //   print(cpf[i]);
    // }
    return true;
  }
}


// ---
// ## CPF
// Válidos:
//   - 049.427.230-94
//   - 358.760.060-09
//   - 595.956.630-34

// Inválidos:
//   - 042.427.230-94
//   - 358.768.060-09
//   - 595.956.930-34

// Regra:  
// Dígitos comuns = 049.427.230  
// Dígitos validadores = 94

//   - Regra 1: Validação do décimo digito
//     - Passo 1:  
//       Somar o resultado da multiplicação dos números comuns pela ordem decrescente de 10 a 2;

//       Ex: `1*10 + 2*9 + 3*8 + 4*7 + ...9\*2`

//     - Passo 2:  
//       Multiplicar o resultado do passo 1, multiplicar por 10 e posteriormente dividir por 11.  
//       Obs 1: Extraindo o resto não o resultado.  
//       Obs 2: Caso o resto seja igual a 10 este deverá ser considerado como 0.

//     - Passo 3:  
//       O décimo digito será válido caso o resultado do passo 2 seja igual ao décimo digito.

//   - Regra 2: Validação do décimo primeiro digito
//     - Passo 1:
//       Somar o resultado da multiplicação dos 10 primeiros dígito pela ordem decrescente de 11 a 2;  
//       OBS.: Deve-se considerar os 9 dígitos comuns mais o primeiro digito já validado, interando um total de 10 algarismos para o calculo.

//       Ex: `1*11 + 2*10 + 3*9 + 4*8 + ...1\*2`

//     - Passo 2:
//       Multiplicar o resultado do passo 1, multiplicar por 10 e posteriormente dividir por 11.  
//       Obs 1: Extraindo o resto não o resultado.  
//       Obs 2: Caso o resto seja igual a 10 este deverá ser considerado como 0.  

//     Passo 3:  
//       O décimo primeiro digito será válido caso o resultado do passo 2 seja igual ao décimo primeiro digito.