import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tema Personalizado'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Exemplo de navegação usando rota nomeada
            Navigator.pushNamed(context, '/home');
          },
          child: const Text('Botão de Teste'),
        ),
      ),
    );
  }
}
