import 'package:meuprimeiroapp/model/card_detail.dart';

class CardDetailRepository {
  Future<CardDetail> get() async {
    await Future.delayed(const Duration(seconds: 3));
    return CardDetail(
        1,
        "Meu card",
        'https://lp.dio.me/wp-content/uploads/2023/03/LOGO-DIO-COLOR.png',
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc blandit id nulla quis bibendum. Sed luctus turpis eget purus tristique consequat. Pellentesque aliquam ultricies suscipit. Integer consectetur dui eu ante tempor facilisis id eu erat. Pellentesque eleifend tristique sem, in aliquet lorem pretium eu. Praesent vitae turpis pulvinar, luctus tellus ac, lobortis nulla. Donec tempus blandit tellus, consectetur cursus diam scelerisque nec. Nulla facilisi.Ut placerat ullamcorper sapien, eu porta dui finibus vel. Duis eget eros viverra, rutrum nibh eu, pretium sapien. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam placerat cursus enim quis egestas. Ut urna dui, placerat in placerat ac, tempor id turpis. Nam nec ex placerat lorem interdum laoreet. Vivamus sed cursus ex. Ut ultricies, sem id eleifend lacinia, nibh tortor mollis orci, non eleifend felis augue a orci. Interdum et malesuada fames ac ante ipsum primis in faucibus. In fringilla odio vel diam tempor, pellentesque condimentum ante dapibus. Fusce mattis vestibulum ultricies. Ut magna eros, egestas et sollicitudin vel, dictum id dui. Phasellus sagittis, magna eget auctor ullamcorper, leo lectus aliquam libero, sed accumsan turpis ligula et elit. Quisque vel porta massa. Suspendisse ullamcorper tempor luctus.");
  }
}
