import 'dart:math';

import 'package:flutter/material.dart';
import 'package:meuprimeiroapp/repositories/linguagens_repository.dart';
import 'package:meuprimeiroapp/repositories/nivel_repository.dart';
import 'package:meuprimeiroapp/shared/widgets/text_styled.dart';

class DadosCadastraisPage extends StatefulWidget {
  const DadosCadastraisPage({Key? key}) : super(key: key);

  @override
  State<DadosCadastraisPage> createState() => _DadosCadastraisPageState();
}

class _DadosCadastraisPageState extends State<DadosCadastraisPage> {
  var nomeController = TextEditingController(text: "");
  var dataNascimentoController = TextEditingController(text: "");
  var nivelSelecionado = "";
  DateTime? dataNascimento;
  var niveisRepository = NivelRepository();
  var linguagensRepository = LinguagensRepository();
  var linguagensSelecionadas = [];
  var niveis = [];
  var linguagens = [];
  double salario = 0;
  var tempoExperiencia = 0;

  bool salvando = false;

  @override
  void initState() {
    niveis = niveisRepository.retornaNiveis();
    linguagens = linguagensRepository.retornaLinguagens();
    super.initState();
  }

  List<DropdownMenuItem<int>> returnItens(int quantidadeMaxima){
    var itens = <DropdownMenuItem<int>>[];
    for (var i = 0; i < quantidadeMaxima; i++) {
      itens.add(DropdownMenuItem(
        value: i,
        child: Text(i.toString())
      ));
    }
    return itens;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meus Dados"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: salvando
        ? const Center(
            child: CircularProgressIndicator())
        : ListView(
          children: [
            const TextStyled(texto: "Nome:"),
            TextField(
              controller: nomeController,
            ),

            const TextStyled(texto: "Data de Nascimento:"),
            TextField(
              controller: dataNascimentoController,
              readOnly: true,
              onTap: () async {
                var dataNascimento = await showDatePicker(context: context,
                 initialDate: DateTime(2023),
                  firstDate: DateTime(1900),
                   lastDate: DateTime.now());
                   if(dataNascimento != null){
                    dataNascimentoController.text = dataNascimento.toString();
                    dataNascimento = dataNascimento;
                   }
              },
            ),

            const TextStyled(texto: "Nivel de experiência:"),
            Column(
              children: niveis.map(
                (nivel) => RadioListTile (
                  dense: true,
              title: Text(nivel.toString()),
              selected: nivelSelecionado == nivel,
              value: nivel.toString(), 
              groupValue: nivelSelecionado, 
              onChanged: (value) {
                nivelSelecionado = value.toString();
              }
            )).toList()
            ),

            const TextStyled(texto: "Linguagens preferidas:"),
            Column(
              children: linguagens.map(
                (linguagem) => CheckboxListTile(
                  dense: true,
                  title: Text(linguagem),
                  value: linguagensSelecionadas.contains(linguagem), 
                  onChanged: (bool? value){
                    if(value!){
                      setState(() {
                      linguagensSelecionadas.add(linguagem);                        
                      });
                    }else{
                      setState(() {
                      linguagensSelecionadas.remove(linguagem);                        
                      });
                    }
                  }
            )).toList()
            ),  
            
            const TextStyled(texto: "Tempo de experiência: "),
            DropdownButton(
              value: tempoExperiencia,
              isExpanded: true,
              items: returnItens(30), 
              onChanged: (value){
                setState(() {
                  tempoExperiencia = int.parse(value.toString());
                });
              }
            ),

            TextStyled(texto: "Pretensão Salarial: R\$ ${salario.round().toString()}"),
            Slider(
              min:0,
              max: 10000,
              value: salario, 
              onChanged: (double value){
                  setState(() {
                    salario = value;
                  });
              }
            ),

            TextButton(onPressed: (){
              setState(() {
                salvando = false;
              });
              if(nomeController.text.trim().length < 3){
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Nome inválido"))
                );
                return;
              }
              if(dataNascimento == null){
                  print(dataNascimento);
                 ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Data deve ser preenchida."))
                );
                return;
              }
              if(nivelSelecionado == ""){
                 ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Nivel deve ser preenchida."))
                );
                return;
              }
              if(linguagensSelecionadas.isEmpty){
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Nivel deve ser preenchida."))
                );
                return;
              }
              if(tempoExperiencia == 0){
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Tempo de experiencia não pode ser 0."))
                );
                return;
              }
              if(salario.round() == 0){
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("A pretenção salarial não pode ser 0."))
                );
                return;
              }
              Future.delayed(const Duration(seconds: 3), (){
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Dados salvo com sucesso!"))
                );
                setState(() {
                  salvando = false;
                });
                Navigator.pop(context);
              });

              setState(() {
                salvando = true;
              });
            }, child: const Text("Salvar"))
          ],
        )
      ),
    );
  }
}