import 'package:flutter/material.dart';
import 'login.dart'; // Importe a classe LoginPage corretamente

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
      home: TelaInicial(), // Certifique-se de que LoginPage esteja importado corretamente
    );
  }
}
