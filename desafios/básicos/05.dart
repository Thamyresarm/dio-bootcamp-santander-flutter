import 'dart:io';

void main() {
  double valor = double.parse(stdin.readLineSync()!);
  String valorFormatado = valor.toStringAsFixed(2);

  if (valor > 0) {
    //TODO: Imprimir a mensagem de sucesso, formatando o saldo atual (vide Exemplos).
    print('Deposito realizado com sucesso!');
    print('Saldo atual: R\$ $valorFormatado');
  } else if (valor == 0) {
    print('Encerrando o programa...');
  } else {
    print('Valor invalido! Digite um valor maior que zero.');
  }
}