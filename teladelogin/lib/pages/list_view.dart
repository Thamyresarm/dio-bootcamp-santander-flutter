import 'package:flutter/material.dart';
import 'package:meuprimeiroapp/shared/app_images.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Image.asset(AppImages.image1),
          title: const Text("Imagem 1"),
          subtitle: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Olá!"),
              Text("08:30"),
            ],
          ),
          trailing: PopupMenuButton<String>(
            onSelected: (menu) => {
              if (menu == 'opcao2'){}
            },
            itemBuilder: (BuildContext bc){
              return <PopupMenuEntry<String>>[
                const PopupMenuItem<String>(
                  value: 'opcao1',
                  child: Text("Opção 1"),
                  ),
                  const PopupMenuItem<String>(
                  value: 'opcao2',
                  child: Text("Opção 2"),
                  ),
                  const PopupMenuItem<String>(
                  value: 'opcao3',
                  child: Text("Opção 3"),
                  ),
              ];
            },
            )

        ),
        Image.asset(AppImages.image1),
        Image.asset(AppImages.image2),
        Image.asset(AppImages.image3)
      ],
    );
  }
}