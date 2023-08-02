import 'package:flutter/material.dart';
import 'package:meus_exercicios_academia/model/exercicios_model.dart';
import 'package:meus_exercicios_academia/model/sentimento_model.dart';

class ExercicioTela extends StatelessWidget {
  ExercicioTela({super.key});

  final ExercicioModel exercicioModel = ExercicioModel(
    id: "001",
    nome: "Remada",
    treino: "Treino A",
    comoFazer: "Segura a barra epuxa",
  );

  final List<SentimentoModel> listaSentimentos = [
    SentimentoModel(
      id: "SE001",
      sentindo: "Pouca Ativacao",
      data: "2023-08-01",
    ),
    SentimentoModel(
      id: "SE002",
      sentindo: "Nada ainda Ativacao",
      data: "2023-08-02",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Remada - Treino A")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Foi Clicado');
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text("Enviar Foto"),
            ),
            const Text(
              'Como fazer?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const Text('Segura com as duas mãos!'),
            const Divider(),
            const Text(
              'Como estou me sentindo?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const Text('Segura com as duas mãos!'),
          ],
        ),
      ),
    );
  }
}
