import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'menu.dart';

class Docentes extends StatefulWidget {
  @override
  _DocentesState createState() => _DocentesState();
}

class _DocentesState extends State<Docentes> {
  String _seccionActual = "mision"; // Estado para controlar la sección visible

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Docentes',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.normal,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.facebook),
            color: Colors.white,
            iconSize: 30,
          ),
          IconButton(
            onPressed: () {},
            icon: FaIcon(FontAwesomeIcons.instagram),
            color: Colors.white,
            iconSize: 30,
          ),
          IconButton(
            onPressed: () {},
            icon: FaIcon(FontAwesomeIcons.youtube),
            color: Colors.white,
            iconSize: 30,
          ),
        ],
      ),
      drawer: Menu(),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            decoration: const BoxDecoration(color: Colors.blue),
            alignment: Alignment.center,
            child: const Text(
              "Docentes",
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          SizedBox(height: 20),








          // Botones de navegación
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildNavButton("Equipo de gestión", "mision"),
              _buildNavButton("Primer ciclo", "vision"),
              _buildNavButton("Segundo ciclo", "valores"),
            ],
          ),
          const SizedBox(height: 20),
          // Contenido dinámico
          Expanded(
            child: _buildSeccionContenido(),
          ),
        ],
      ),
    );
  }

  // Widget para construir cada botón de navegación
  Widget _buildNavButton(String titulo, String seccion) {
    return TextButton(
      onPressed: () {
        setState(() {
          _seccionActual = seccion; // Cambiar la sección actual
        });
      },
      child: Text(
        titulo,
        style: TextStyle(
          fontSize: 18,
          color: _seccionActual == seccion ? Colors.blue : Colors.grey,
          fontWeight:
              _seccionActual == seccion ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }


  // Widget para mostrar el contenido según la sección actual
  Widget _buildSeccionContenido() {
    switch (_seccionActual) {
      case "mision":
        return _buildMision();
      case "vision":
        return _buildVision();
      case "valores":
        return _buildValores();
      default:
        return Container();
    }
  }

  // Contenido de "Misión"
  Widget _buildMision() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Equipo administrativo y de gestión",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              

              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(80),
                    child: Container(
                      width: 150,
                      height: 150,
                      color: Colors.grey[200],
                      child: Image.network("https://images.pexels.com/photos/5722156/pexels-photo-5722156.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                      fit: BoxFit.cover,),                
                      
                    ),
                  ),
                  Text("Katherine Ureña",
                  style: TextStyle(
                    fontSize: 18

                  ),),
                  Text("Directora",
                  style: TextStyle(
                    color: Colors.grey
                  ),
                  ),               
                ],
              ),


              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(80),
                    child: Container(
                      width: 150,
                      height: 150,
                      color: Colors.grey[200],
                      child: Image.network("https://images.pexels.com/photos/5722156/pexels-photo-5722156.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                      fit: BoxFit.cover,),                
                      
                    ),
                  ),
                  Text("Nancy Moore",
                  style: TextStyle(
                    fontSize: 18

                  ),),
                  Text("Sub-directora",
                  style: TextStyle(
                    color: Colors.grey
                  ),
                  ),               
                ],
              ),


              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(80),
                    child: Container(
                      width: 150,
                      height: 150,
                      color: Colors.grey[200],
                      child: Image.network("https://images.pexels.com/photos/5722156/pexels-photo-5722156.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                      fit: BoxFit.cover,),                
                      
                    ),
                  ),
                  Text("Andrew Martinez",
                  style: TextStyle(
                    fontSize: 18

                  ),),
                  Text("Coordinador",
                  style: TextStyle(
                    color: Colors.grey
                  ),
                  ),               
                ],
              ),
              
    
            ],
          ),
        ],
      ),
    );
  }

  // Contenido de "Visión"
  Widget _buildVision() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            
            "Docentes del primer ciclo",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 10),


          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Centrar todos los elementos
            children: [
                            Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(80),
                    child: Container(
                      width: 150,
                      height: 150,
                      color: Colors.grey[200],
                      child: Image.network("https://images.pexels.com/photos/5722156/pexels-photo-5722156.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                      fit: BoxFit.cover,),                
                      
                    ),
                  ),
                  Text("Justin Mendoza",
                  style: TextStyle(
                    fontSize: 18

                  ),),
                  Text("Sociales",
                  style: TextStyle(
                    color: Colors.grey
                  ),
                  ),               
                ],
              ),


              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(80),
                    child: Container(
                      width: 150,
                      height: 150,
                      color: Colors.grey[200],
                      child: Image.network("https://images.pexels.com/photos/5722156/pexels-photo-5722156.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                      fit: BoxFit.cover,),                
                      
                    ),
                  ),
                  Text("Massiel Romero",
                  style: TextStyle(
                    fontSize: 18

                  ),),
                  Text("Frances",
                  style: TextStyle(
                    color: Colors.grey
                  ),
                  ),               
                ],
              ),


              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(80),
                    child: Container(
                      width: 150,
                      height: 150,
                      color: Colors.grey[200],
                      child: Image.network("https://images.pexels.com/photos/5722156/pexels-photo-5722156.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                      fit: BoxFit.cover,),                
                      
                    ),
                  ),
                  Text("Carla Feud",
                  style: TextStyle(
                    fontSize: 18

                  ),),
                  Text("Inglés",
                  style: TextStyle(
                    color: Colors.grey
                  ),
                  ),               
                ],
              ),



  ],
),









        ],
      ),
    );
  }

  // Contenido de "Valores"
  Widget _buildValores() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Docentes del segundo ciclo",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),

          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(80),
                    child: Container(
                      width: 150,
                      height: 150,
                      color: Colors.grey[200],
                      child: Image.network("https://images.pexels.com/photos/5722156/pexels-photo-5722156.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                      fit: BoxFit.cover,),                
                      
                    ),
                  ),
                  Text("Ingrid Luna",
                  style: TextStyle(
                    fontSize: 18

                  ),),
                  Text("Aduanas",
                  style: TextStyle(
                    color: Colors.grey
                  ),
                  ),               
                ],
              ),


              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(80),
                    child: Container(
                      width: 150,
                      height: 150,
                      color: Colors.grey[200],
                      child: Image.network("https://images.pexels.com/photos/5722156/pexels-photo-5722156.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                      fit: BoxFit.cover,),                
                      
                    ),
                  ),
                  Text("Eunice Peña",
                  style: TextStyle(
                    fontSize: 18

                  ),),
                  Text("Contabilidad",
                  style: TextStyle(
                    color: Colors.grey
                  ),
                  ),               
                ],
              ),


              Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(80),
                    child: Container(
                      width: 150,
                      height: 150,
                      color: Colors.grey[200],
                      child: Image.network("https://images.pexels.com/photos/5722156/pexels-photo-5722156.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                      fit: BoxFit.cover,),                
                      
                    ),
                  ),
                  Text("Naroibi Sanchéz",
                  style: TextStyle(
                    fontSize: 18

                  ),),
                  Text("Educación física",
                  style: TextStyle(
                    color: Colors.grey
                  ),
                  ),               
                ],
              ),








               
                ],
              ),


            




             
             
            
          
        ],
      ),
    );
  }
}
