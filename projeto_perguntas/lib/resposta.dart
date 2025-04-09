import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  const Resposta({required this.texto, required this.quandoSelecionado, super.key });

  final void Function() quandoSelecionado;
  final String texto;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.amber
          ),
          onPressed: quandoSelecionado,
          child: Text(
            texto,
            style: TextStyle(
              color: Colors.white
            ),
          
          ),
        ),
    );
  }
}