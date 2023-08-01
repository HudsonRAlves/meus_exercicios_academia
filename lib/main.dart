import 'package:flutter/material.dart';
import 'package:meus_exercicios_academia/telas/exercicio_tela.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ExercicioTela(),
    );
  }
}
