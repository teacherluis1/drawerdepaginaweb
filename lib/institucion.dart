import 'package:flutter/material.dart';
import 'menu.dart';

class Institucion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Institucion'),
      ),
      drawer: Menu(),  // Usamos el menú en todas las páginas
      body: Center(
        child: Text("Bienvenido a la Página de Institucion"),
      ),
    );
  }
}
