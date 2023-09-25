import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meuprimeiroapp/service/gerador_numero_aleatorio.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var numeroRandomico = 0;
  var quantidadeCliques = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meu App", style: GoogleFonts.pacifico()),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
   //       Center(
   //         child: 
               Expanded(
                 child: Container(
                  width: double.infinity,
                  color: Colors.cyan,
                   child: Text(
                           "Ações do usuário",
                               style: GoogleFonts.aBeeZee(fontSize: 20)
                           ),
                 ),
               ),
            SizedBox(
              width: 100,
              height: 100,
              child: Container(
                color: Colors.orange,
                child: Text(
                        "Foi Clicado $quantidadeCliques vezes",
                  style: GoogleFonts.aBeeZee(fontSize: 20)
                        ),
              ),
            ),
   //       ),
    //      Center(
    //          child: 
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: Colors.indigo,
                  child: Text(
                            numeroRandomico.toString(),
                  style: GoogleFonts.robotoCondensed(fontSize: 20)
                          ),
                ),
              ),
      //    ),
      Expanded(
        child: Container(
          color: Colors.grey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.red,
                child: Text(
                    "Nome",
                      style: GoogleFonts.robotoCondensed(fontSize: 20)
                  ),
              ),
            ),
              Expanded(
                flex: 3,
                child: Container(
                  color: Colors.blue,
                  child: Text(
                    "Thamyres Magalhães",
                      style: GoogleFonts.robotoCondensed(fontSize: 20)
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.green,
                  child: Text(
                    "30",
                      style: GoogleFonts.robotoCondensed(fontSize: 20)
                  ),
                ),
              ),
          ],),
        ),
      )
        ],
      ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_box),
        onPressed: () {
          setState(() {
            quantidadeCliques++;
            numeroRandomico = GeradorNumeroAleatorio.gerarNumeroRandomico(1000);
          });
        },
      ),
    );
  }
}
