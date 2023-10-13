import 'dart:io';

void main() {
  final scanner = stdin;

  final entrada = scanner.readLineSync()!;
  final partes = entrada.split(',');
   
  // TODO: Solicitar ao usuário que forneça os valores necessários para criar uma Transacao.
  var t1 = new Transacao(partes[0], partes[1], partes[2], double.parse(partes[3]));
  t1.imprimir();
}

class Transacao {
  final String data;
  final String hora;
  final String descricao;
  final double valor;

  Transacao(this.data, this.hora, this.descricao, this.valor);

  void imprimir() {
    print(descricao);
    print(data);
    print(hora);
    print(valor.toStringAsFixed(2));
  }
}