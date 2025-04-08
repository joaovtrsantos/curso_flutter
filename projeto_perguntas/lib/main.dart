import 'package:flutter/material.dart';

main(){
  runApp(new PerguntaApp());
}

class PerguntaApp extends StatelessWidget{

  void responder(){
    print('Pergunta respondida!');
  }

  final perguntas = [
    'Qual é a sua cor favorita?',
    'Qual é o seu animal favorito?'
  ];
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Text(perguntas[0]),
            ElevatedButton(
              onPressed: responder,
              child: Text('Resposta 1'),
            ),
            ElevatedButton(
              onPressed: responder,
              child: Text('Resposta 2'),
            ),
            ElevatedButton(
              onPressed: responder,
              child: Text('Resposta 3'),
            )
          ],
        ),
      ),
    );
  }
}