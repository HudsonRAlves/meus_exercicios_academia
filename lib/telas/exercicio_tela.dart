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
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Column(
          children: [
            Text(
              exercicioModel.nome,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            Text(
              exercicioModel.treino,
              style: TextStyle(fontSize: 15),
            )
          ],
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF0A6D92),
        elevation: 0,
        toolbarHeight: 72,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(32)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Foi Clicado');
        },
        child: const Icon(Icons.add),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: ListView(
          children: [
            SizedBox(
              height: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Enviar Foto"),
                  ),
                  ElevatedButton(
                      onPressed: () {}, child: const Text("Tirar Foto"))
                ],
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'Como fazer?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 8),
            Text(exercicioModel.comoFazer),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(
                color: Colors.black87,
              ),
            ),
            const Text(
              'Como estou me sentindo?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(listaSentimentos.length, (index) {
                SentimentoModel sentimentoAgora = listaSentimentos[index];
                return ListTile(
                  dense: true,
                  contentPadding: EdgeInsets.zero,
                  title: Text(sentimentoAgora.sentindo),
                  subtitle: Text(sentimentoAgora.data),
                  leading: const Icon(Icons.double_arrow),
                  trailing: IconButton(
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                    onPressed: () {
                      print("DELETAR ${sentimentoAgora.sentindo}");
                    },
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
