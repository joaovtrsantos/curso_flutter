import 'package:flutter/material.dart';
import 'questao.dart';
import 'resposta.dart';

class Questionario extends StatelessWidget {
  const Questionario({
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.responder,
    super.key,
  });

  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) responder;

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas =
        temPerguntaSelecionada
            ? (perguntas[perguntaSelecionada]['respostas']
                as List<Map<String, Object>>)
            : [];

    return Column(
      children: [
        Questao(texto: perguntas[perguntaSelecionada]['texto'].toString()),
        ...respostas.map((resp) {
          return Resposta(
            texto: resp['texto'] as String,
            quandoSelecionado:
                () => responder(int.parse(resp['pontuacao'].toString())),
          );
        }),
      ],
    );
  }
}
