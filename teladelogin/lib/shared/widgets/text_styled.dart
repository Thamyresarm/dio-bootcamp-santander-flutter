import 'package:flutter/material.dart';

class TextStyled extends StatelessWidget {
  final String texto;
  const TextStyled({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Text(texto, 
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
    );
  }
}