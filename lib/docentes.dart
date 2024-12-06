import 'package:flutter/material.dart';
import 'menu.dart';

class Docentes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Docentes'),
      ),
      drawer: Menu(),  // Usamos el menú en todas las páginas
      body: Center(
        child: Text("Bienvenido a la Página de Docente"),
      ),
    );
  }
}
