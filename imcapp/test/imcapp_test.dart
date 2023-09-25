import 'package:imcapp/imcapp.dart' as imcapp;
import 'package:test/test.dart';

void main() {
  test('Deve retornar 27.239224483255885', () {
    expect(imcapp.calculaImc(68, 1.58), 27.239224483255885);
  });

  test('Deve retornar pré-Obesidade', () => {
    expect(imcapp.estadoNutricional(27.239224483255885), 'Essa pessoa tem Pré-Obesidade')
  });
}
