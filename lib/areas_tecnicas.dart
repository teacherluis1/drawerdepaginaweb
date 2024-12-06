import 'package:flutter/material.dart';
import 'menu.dart';

class AreasTecnicas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Áreas Técnicas'),
      ),
      drawer: Menu(),  // El menú se usa aquí también
      body: Center(
        child: Text("Contenido de Áreas Técnicas"),
      ),
    );
  }
}
