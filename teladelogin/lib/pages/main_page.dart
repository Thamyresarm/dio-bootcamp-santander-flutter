import 'package:flutter/material.dart';
import 'package:meuprimeiroapp/pages/image_assets.dart';
import 'package:meuprimeiroapp/pages/card_page.dart';
import 'package:meuprimeiroapp/pages/list_view.dart';
import 'package:meuprimeiroapp/pages/list_view_h.dart';
import 'package:meuprimeiroapp/pages/tarefa_page.dart';
import 'package:meuprimeiroapp/shared/widgets/custon_drawer.dart';

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
        drawer: const CustonDrawer(),
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
                CardPage(),
                ImageAssetsPage(),
                ListViewPage(),    
                ListViewHPage(),
                TarefaPage(), 
              ]
            ),
          ),
          BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
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
              label: "Card",
              icon: Icon(Icons.card_giftcard)
            ),
            BottomNavigationBarItem(
              label: "List",
              icon: Icon(Icons.list)
            ),
            BottomNavigationBarItem(
              label: "ListH",
              icon: Icon(Icons.list)
            ),
            BottomNavigationBarItem(
              label: "Tarefas",
              icon: Icon(Icons.task)
            ),
          ])
        ],
      ), 
      ),
    );
  }
}