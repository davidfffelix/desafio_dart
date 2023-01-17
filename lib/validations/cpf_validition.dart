class CPFValidation {
  // soma = 5*10;
  // 5 * 10
  // 529.982.247-25 - Valor de entrada
  bool primeiroDigitoVerificador(String cpf) {
    // Pegar o 1° dígito e multiplicar por 10

    // int firstDigit = int.parse(cpf[0]);
    // int result = firstDigit * 10;

    // int secondDigit = int.parse(cpf[1]);
    // int result2 = secondDigit * 9;

    for (int i = 0; i < cpf.length; i++) {
      print(cpf[i]);
    }
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