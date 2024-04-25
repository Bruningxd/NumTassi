import 'package:flutter/material.dart';
import 'login.dart'; //

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meu App',
      theme: ThemeData(
        primaryColor: Cores.Fundo,
        scaffoldBackgroundColor: Cores.Fundo,
      ),
      home: TelaInicial(),
    );
  }
}
