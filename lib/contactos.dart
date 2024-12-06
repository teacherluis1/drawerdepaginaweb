import 'package:flutter/material.dart';
import 'menu.dart';

class Contactos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contactos'),
      ),
      drawer: Menu(),  // El menú se usa aquí también
      body: Center(
        child: Text("Contenido de Contactos"),
      ),
    );
  }
}