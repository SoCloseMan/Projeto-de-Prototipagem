import 'package:flutter/material.dart';
import 'pages/home/home_page.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sistema de Controle de Notas',
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
        color: Color.fromRGBO(19, 103, 138, 1),
      )),
      home: const HomePage(),
    );
  }
}
