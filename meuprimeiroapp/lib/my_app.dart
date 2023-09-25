import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meuprimeiroapp/pages/home_page.dart';
import 'package:meuprimeiroapp/pages/login_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
       // textTheme: GoogleFonts.pacificoTextTheme()
        ),
      home: const LoginPage(),
    );
  }
}

