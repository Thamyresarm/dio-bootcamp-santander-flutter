import 'dart:math';

class GeradorNumeroAleatorio{

static int gerarNumeroRandomico(int numeroMaximo){
  Random numeroRandomico = Random();
  return numeroRandomico.nextInt(numeroMaximo);
}
}