import 'package:flutter/material.dart';

class Cores {
  static const Color Fundo = const Color(0xFFFFFFFF);
  static const Color ConstrasteComFundo = const Color(0xFF353A61);
  static const Color CorDeDestaque = const Color(0xFF3CD27D);
  static const Color Formularios = const Color(0xFF62678C);
}

class Textos {
  static const TextStyle titulos = TextStyle(
    color: Colors.white,
    letterSpacing: 0.5,
    fontSize: 18,
    inherit: true,
  );

  static const TextStyle subtitulos = TextStyle(
    color: Colors.white,
    letterSpacing: 0.5,
    fontSize: 14,
    inherit: true,
  );
}

class TelaInicial extends StatefulWidget {
  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  int selectedButtonIndex = 0; // Índice do botão selecionado (0, 1 ou 2)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 250,
                height: 250,
                child: Image.asset("test/assets/imagens/dog.png"),
              ),
              const SizedBox(height: 20.0), // Espaçamento entre a imagem e o texto
              const Text(
                'Entregamos produtos para animais de estimação em todo o mundo',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16.0), // Espaçamento entre o texto e o botão
              const Text(
                'Entregamos produtos para animais de estimação em todo o mundo,'
                    ' nunca atrasamos, fornecemos produtos no prazo',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: _buildCustomFab(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat, // Posição do botão
    );
  }

  Widget _buildCustomFab() {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        margin: const EdgeInsets.only(bottom: 50.0, left: 30.0), // Margem para posicionar o botão à esquerda e espaço da borda
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildCustomButton(0), // Botão 1
            _buildCustomButton(1), // Botão 2
            _buildCustomButton(2), // Botão 3
            SizedBox(width: 260.0), // Espaço entre os botões
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0), // Borda circular com raio de 20.0
                color: Colors.blueGrey, // Cor preta de fundo da borda
              ),
              child: IconButton(
                icon: Icon(Icons.arrow_forward, color: Colors.white), // Ícone branco para contrastar com o fundo preto da borda
                onPressed: () {
                  // Ação ao pressionar o botão de seta para a direita
                },
              ),
            ),
          ],
        ),
      ),
    );
  }









  Widget _buildCustomButton(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedButtonIndex = index; // Atualiza o botão selecionado
        });
      },
      child: Container(
        width: 10.0,
        height: 10.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: selectedButtonIndex == index ? Colors.black : Colors.grey, // Cor do botão selecionado ou não
        ),
        margin: const EdgeInsets.only(left: 8.0),
      ),
    );
  }
}
