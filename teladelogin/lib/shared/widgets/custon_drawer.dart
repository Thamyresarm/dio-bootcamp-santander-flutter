import 'package:flutter/material.dart';
import 'package:meuprimeiroapp/pages/dados_cadastrais.dart';
import 'package:meuprimeiroapp/pages/login_page.dart';

class CustonDrawer extends StatelessWidget {
  const CustonDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: Column(   
            crossAxisAlignment: CrossAxisAlignment.start,         
            children: [
              InkWell(
                onTap: (){
                  showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    context: context, 
                    builder: (BuildContext bc){
                      return Wrap(
                        children: [
                          ListTile(
                            onTap: (){
                              Navigator.pop(context);
                            },
                            title: const Text("Camera"),
                            leading: const Icon(Icons.camera),
                          ),
                          ListTile(
                             onTap: (){
                              Navigator.pop(context);
                            },
                            title: const Text("Galeria"),
                            leading: const Icon(Icons.browse_gallery),
                          )
                        ],
                      );
                    });
                },
                child: UserAccountsDrawerHeader(
                  decoration: const BoxDecoration(color: Colors.orange),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Image.network('https://lp.dio.me/wp-content/uploads/2023/03/LOGO-DIO-COLOR.png')
                  ),
                  accountName: const Text("Thamyres"), 
                  accountEmail: const Text("email@teste.com")
                ),
              ),
              InkWell(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  width: double.infinity,
                  child: const Row(
                    children: [
                      Icon(Icons.person),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Dados Cadastrais"),
                    ],
                  )),
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
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  width: double.infinity,child: const Row(
                    children: [
                      Icon(Icons.info),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Termos de uso e privacidade"),
                    ],
                  )),
                onTap: () {
                  showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    context: context, 
                    builder: (BuildContext bc){
                      return Container(
                        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
                        child: const Column(
                          children: [
                            Text("Termos de uso e privacidade",
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                            SizedBox(
                              height: 20,
                            ),
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc blandit id nulla quis bibendum. Sed luctus turpis eget purus tristique consequat. Pellentesque aliquam ultricies suscipit. Integer consectetur dui eu ante tempor facilisis id eu erat. Pellentesque eleifend tristique sem, in aliquet lorem pretium eu. Praesent vitae turpis pulvinar, luctus tellus ac, lobortis nulla. Donec tempus blandit tellus, consectetur cursus diam scelerisque nec. Nulla facilisi.Ut placerat ullamcorper sapien, eu porta dui finibus vel. Duis eget eros viverra, rutrum nibh eu, pretium sapien. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam placerat cursus enim quis egestas. Ut urna dui, placerat in placerat ac, tempor id turpis. Nam nec ex placerat lorem interdum laoreet. Vivamus sed cursus ex. Ut ultricies, sem id eleifend lacinia, nibh tortor mollis orci, non eleifend felis augue a orci. Interdum et malesuada fames ac ante ipsum primis in faucibus. In fringilla odio vel diam tempor, pellentesque condimentum ante dapibus. Fusce mattis vestibulum ultricies. Ut magna eros, egestas et sollicitudin vel, dictum id dui. Phasellus sagittis, magna eget auctor ullamcorper, leo lectus aliquam libero, sed accumsan turpis ligula et elit. Quisque vel porta massa. Suspendisse ullamcorper tempor luctus.",
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 16),),
                          ],
                        ),
                      );
                    });
                },
              ),
              const Divider(),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  width: double.infinity,child: const Row(
                    children: [
                      Icon(Icons.album),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Configurações"),
                    ],
                  )),
                onTap: () {},
              ),
               const Divider(),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  width: double.infinity,child: const Row(
                    children: [
                      Icon(Icons.exit_to_app),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Sair"),
                    ],
                  )),
                onTap: () {
                  showDialog(
                    context: context, 
                    builder: (BuildContext bc){
                      return AlertDialog(
                        alignment: Alignment.centerLeft,
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                        title: const Text('Meu App'),
                        content: const Wrap(
                          children: [
                            Text("Deseja sair do aplicativo? "),
                          ],
                        ),
                        actions: [
                          TextButton(
                            onPressed: (){
                              Navigator.pop(context);
                            }, 
                            child: const Text("Não")
                          ),
                            TextButton(
                            onPressed: (){
                              Navigator.pushReplacement(
                                context, 
                                MaterialPageRoute(
                                  builder: (context)=> const LoginPage())
                              );
                            }, 
                            child: const Text("Sim")
                          )
                        ],
                      );
                    });
                },
              ),
            ],
          ),
        );
  }
}