import 'package:flutter/material.dart';
import 'menu.dart';

class Portada extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portada'),
      ),
      drawer: Menu(),  // Usamos el menú en todas las páginas
      body: Center(
        child: Text("Bienvenido a la Página de Portada"),
      ),
    );
  }
}
