import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        body: SizedBox(
          width: double.infinity,          
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              const Icon(
                Icons.person,
                size: 125,
                color: Colors.purple,),
              const SizedBox(
                height: 40,
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30),
                height: 30,
                alignment: Alignment.center,
                child: const Row(
                  children: [
                    Expanded(flex: 2, child: Text("Informe seu e-mail: ")),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(flex: 3,child: Text("e-mail..........")),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30),
                height: 30,
                alignment: Alignment.center,
                child: const Row(
                  children: [
                    Expanded(flex: 2,child: Text("Informe a senha: ")),
                     SizedBox(
                      width: 20,
                    ),
                    Expanded(flex: 3,child: Text("senha..........")),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(child: Container()),  
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30),
                color: Colors.purple,
                height: 30,
                alignment: Alignment.center,
                child: Text("Login"),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 30),
                height: 30,
                alignment: Alignment.center,
                child: Text("Cadastre-se"),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
            
          ),
        ),
      ),
    );
  }
}