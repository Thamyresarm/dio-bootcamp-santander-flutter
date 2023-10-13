import 'dart:io';

class Bancaria {
  int numeroConta;
  String nomeTitular;
  double saldo;

  Bancaria(this.numeroConta, this.nomeTitular, this.saldo);

  int getNumeroConta() {
    return numeroConta;
  }

  String getNomeTitular() {
    return nomeTitular;
  }

  double getSaldo() {
    return saldo;
  }
}

void main() {
  int numeroConta = int.parse(stdin.readLineSync()!);
  String nomeTitular = stdin.readLineSync()!;
  double saldo = double.parse(stdin.readLineSync()!);

  //TODO: Criar uma instância de "ContaBancaria" com os valores de Entrada.
  var c1 = new Bancaria(numeroConta, nomeTitular, saldo);

  print("Informacoes:");
  //TODO: Imprimir as informações da conta usando o objeto criado no TODO acima.
  print('Conta:  ${c1.getNumeroConta()}');
  print('Titular:  ${c1.getNomeTitular()}');
  print('Saldo: R\$ ${c1.getSaldo()}');

}