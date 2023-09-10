import 'dart:convert';
import 'dart:io';

void imc() {
  var opcao;
  do {
    print('Digite o seu peso(kg) ou qualquer tecla para sair: ');
    var dado = stdin.readLineSync(encoding: utf8);
    var peso = double.tryParse(dado ?? "");
    opcao = peso ?? "s";

    if (peso != null) {
      print('Digite a sua altura(metros) ou qualquer tecla para sair: ');
      dado = stdin.readLineSync(encoding: utf8);
      var altura = double.tryParse(dado ?? "");
      opcao = altura ?? "s";

      if (altura != null) {
        var valorImc = calculaImc(peso, altura);

        var situacaoImc = estadoNutricional(valorImc);

        print(situacaoImc);
      }
    }
  } while (opcao.toUpperCase() != "S");

  print("Calculadora Finalizada!");
}

double calculaImc(peso, altura) {
  var valorImc = peso / (altura * altura);
  return valorImc;
}

String estadoNutricional(valorImc) {
  var message = "";

  if (valorImc >= 40) {
    message = "Essa pessoa tem Obesidade grau 3 (Mórbida)";
  } else if ((valorImc < 40) && (valorImc >= 35)) {
    message = "Essa pessoa tem Obesidade grau 2";
  } else if ((valorImc < 35) && (valorImc >= 30)) {
    message = "Essa pessoa tem Obesidade grau 1";
  } else if ((valorImc < 30) && (valorImc >= 25)) {
    message = "Essa pessoa tem Pré-Obesidade";
  } else if ((valorImc < 25) && (valorImc >= 18.5)) {
    message = "Essa pessoa tem o peso Normal";
  } else if ((valorImc < 18.5) && (valorImc >= 17)) {
    message = "Essa pessoa tem Desnutrição grau 1";
  } else if ((valorImc < 17) && (valorImc >= 16)) {
    message = "Essa pessoa tem Desnutrição grau 2";
  } else if ((valorImc < 16) && (valorImc >= 13)) {
    message = "Essa pessoa tem Desnutrição grau 3";
  } else if ((valorImc < 13) && (valorImc >= 10)) {
    message = "Essa pessoa tem Desnutrição grau 4";
  } else if (valorImc < 10) {
    message = "Essa pessoa tem Desnutrição grau 5";
  }

  return message;
}
