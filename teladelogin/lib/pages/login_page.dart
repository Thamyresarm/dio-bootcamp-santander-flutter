import 'package:flutter/material.dart';
import 'package:meuprimeiroapp/pages/main_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var email = TextEditingController(text: "email@teste.com");
  var senha = TextEditingController();
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          //width: double.infinity,          
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Expanded(child: Container()),
                    Expanded(
                      flex: 8,
                      child: Image.network(
                        'https://lp.dio.me/wp-content/uploads/2023/03/LOGO-DIO-COLOR.png',
                      ),
                    ),
                    Expanded(child: Container()),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text("Ja tem cadastro? ",
                style: TextStyle(color: Colors.white, fontSize: 26, fontWeight: FontWeight.w700),),
                const SizedBox(
                  height: 10,
                ),
                const Text("Faça seu login e make the change ",
                style: TextStyle(color: Colors.white, fontSize: 14)),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  height: 30,
                  alignment: Alignment.center,
                  child: TextField(
                    controller: email,
                    onChanged: (value){
                      debugPrint(value);
                    },
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(top: 0),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 185, 107, 236))),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                             color: Color.fromARGB(255, 185, 107, 236))),
                      
                      hintText: "E-mail",
                      hintStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(
                        Icons.mail, 
                        color: Color.fromARGB(255, 185, 107, 236),)
                    )
                  )
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  height: 30,
                  alignment: Alignment.center,
                  child: TextField(
                    obscureText: isObscureText,
                    controller: senha,
                    onChanged: (value){
                      debugPrint(value);
                    },
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(top: 0),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 185, 107, 236))),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                             color: Color.fromARGB(255, 185, 107, 236))),
                      hintText: "Senha",
                      hintStyle: const TextStyle(color: Colors.white),
                      prefixIcon: const Icon(
                        Icons.lock, 
                        color: Color.fromARGB(255, 185, 107, 236),),
                        //GestureDetector
                        suffixIcon: InkWell(
                          onTap: (){
                            setState(() {
                              isObscureText = !isObscureText;
                            });                            
                          },
                          child: Icon(
                            isObscureText ? 
                            Icons.visibility_off :
                            Icons.visibility,
                            color: Colors.white,
                          ),
                        )
                    )
                  )
                ),
                const SizedBox(
                  height: 30,
                ),
           
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  height: 30,
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: (){
                        if(email.text.trim() == "email@teste.com" && senha.text.trim() == "oi"){
                          Navigator.pushReplacement(
                            context, MaterialPageRoute(
                              builder: (context) => const MainPage()));                       
                        }else{ 
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Login Inválido! Verifique se o email e a senha estão corretos."))
                          );      
                        }
                        //debugPrint(email.text);
                       // debugPrint(senha.text);
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          )
                        ),
                        backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 185, 107, 236))
                      ),
                      child: const Text("ENTRAR",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400))
                    ),
                  )
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(child: Container()), 
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  height: 30,
                  alignment: Alignment.center,
                  child: Text("Esqueci minha senha",
                  style: TextStyle(color: Colors.yellow,fontWeight: FontWeight.w400),),
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  height: 30,
                  alignment: Alignment.center,
                  child: Text("Criar conta",
                  style: TextStyle(color: Colors.green,fontWeight: FontWeight.w400),),
                ),
                const SizedBox(
                  height: 60,
                ),
              ],
              
            ),
          ),
        ),
      ),
    );
  }
}