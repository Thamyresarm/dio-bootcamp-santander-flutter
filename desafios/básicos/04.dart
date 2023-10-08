import 'dart:io';

void main() {
  var valorInicial = double.parse(stdin.readLineSync()!);
  var taxaJuros = double.parse(stdin.readLineSync()!);
  var periodo = int.parse(stdin.readLineSync()!);

  var valorFinal = valorInicial;


 
   //TODO: Iterar, baseado no período em anos, para calculo do valorFinal com os juros. M = C * (1+i)^t
   
   valorFinal = investimento(valorFinal, taxaJuros, periodo);
   
   String valorFinalFormatado = valorFinal.toStringAsFixed(2);

  print("Valor final do investimento: R\$ $valorFinalFormatado");
   
}

double investimento(valorInicial, taxaJuros, periodo){
  var juros = 1 + taxaJuros;
  var totalJuros = 1.0;
  
  for(var i = 0; i < periodo; i++){
    totalJuros = totalJuros * juros;
   }

  return valorInicial * totalJuros;
   
}