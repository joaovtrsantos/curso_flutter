import 'package:flutter/material.dart';
import 'package:projeto_perguntas/cabecalho.dart';
import './questao.dart';
import './resposta.dart';

main(){
  runApp(new PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp>{
  var _perguntaSelecionada = 0;
  
  final List<Map<String, Object>> _perguntas = const [
    {
      'texto': 'Qual é a sua cor favorita?',
      'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco'],
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leão'],
    },
    {
      'texto': 'Qual é o seu instrutor favorito?',
      'respostas': ['Maria', 'João'],
    },
  ];

  void _responder(){
    setState(() {
        _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  Widget build(BuildContext context) {

    List<String> respostas = temPerguntaSelecionada
      ? _perguntas[_perguntaSelecionada].cast()['respostas']
      : [];
    List<Widget> widgets = respostas
    .map((t) => Resposta(texto: t, quandoSelecionado: _responder))
    .toList();

    // for (var textoResp in perguntas[_perguntaSelecionada].cast()['respostas']){
    //   respostas.add(Resposta(texto: textoResp, quandoSelecionado: _responder));
    // }
    return MaterialApp(
      home: Scaffold(
        appBar: Cabecalho(),
        body: temPerguntaSelecionada ? Column(
          children: [
            Questao(texto: _perguntas[_perguntaSelecionada]['texto'].toString()),
            ...widgets,
          ],
        ) : Center(
          child: Text(
            'Parabéns!',
            style: TextStyle(
              fontSize: 28
            ),
          ),
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget{

  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}