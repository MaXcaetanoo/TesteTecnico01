import 'dart:io';

void main() {
  int somatoria, numero = 0;

  print("Entre com um numero inteiro e positivo: ");

  //Entrada do Número
  numero = int.parse(stdin.readLineSync().toString());

  if (numero < 0) {
    //Captura de exception
    throw ValorNegativoException();
  } else {
    int soma = 0;

    //somatoria
    for (int i = 0; i < numero; i++) {
      if ((i % 3 == 0) || (i % 5 == 0)) {
        soma += i;
      }
    }
    somatoria = soma;
    print('esse é o valor da minha somatoria é: $somatoria');
  }
}

class ValorNegativoException implements Exception {}

class ValorNaoNumericoException implements Exception {}
