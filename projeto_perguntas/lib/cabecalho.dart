import 'package:flutter/material.dart';

class Cabecalho extends StatelessWidget implements PreferredSizeWidget {
  // const Cabecalho({super.key});

  @override
  Widget build(BuildContext context) {
    return 
      Container(
        width: double.infinity,
        child: AppBar(title: Text('Perguntas', style: TextStyle(color: Colors.white)), backgroundColor: Colors.blue, centerTitle: true)
      );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}