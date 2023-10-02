import 'package:flutter/material.dart';
import 'package:meuprimeiroapp/pages/dados_cadastrais.dart';
import 'package:meuprimeiroapp/pages/pagina_dois.dart';
import 'package:meuprimeiroapp/pages/pagina_um.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController controller = PageController(initialPage: 0);
  int posicaoPag = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text("HOME PAGE")),
        drawer: Drawer(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(   
              crossAxisAlignment: CrossAxisAlignment.start,         
              children: [
                InkWell(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    width: double.infinity,
                    child: const Text("Dados Cadastrais")),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => const DadosCadastraisPage()
                    ));
                  },
                ),
                const Divider(),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    width: double.infinity,child: const Text("Configurações")),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      body: Column(
        children: [
          Expanded(
            child: PageView(  
              controller: controller,
              onPageChanged: (value){
                setState(() {                  
                  posicaoPag = value;
                });
              },
              children: const [
                PaginaUmPage(),
                PaginaDoisPage(),                
              ]
            ),
          ),
          BottomNavigationBar(
            onTap: (value){
              controller.jumpToPage(value);
            },
            currentIndex: posicaoPag,
            items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home)
            ),
             BottomNavigationBarItem(
              label: "Pink",
              icon: Icon(Icons.person)
            ),
          ])
        ],
      ), 
      ),
    );
  }
}