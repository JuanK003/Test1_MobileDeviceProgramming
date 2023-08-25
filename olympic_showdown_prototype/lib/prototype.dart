import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF36435D),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(75), // Altura del AppBar
          child: AppBar(
            backgroundColor:
                Colors.transparent, // Hacer el fondo del AppBar transparente
            elevation: 0,
            toolbarHeight:
                100, // Ajustar la altura del AppBar para crear espacio en blanco
            title: Container(
              decoration: BoxDecoration(
                color: const Color(
                    0xFF395387), // Color de fondo del área de búsqueda
                borderRadius: BorderRadius.circular(28.0),
                border: Border.all(
                  color: Colors.transparent,
                  width: 1.0,
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.menu,
                        color: Colors.white), // Menú de hamburguesa
                    onPressed: () {
                      // Acción para el menú
                    },
                  ),
                  const Expanded(
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 0.7),
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(12.0),
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.search,
                        color: Colors.white), // Icono de búsqueda
                    onPressed: () {
                      // Acción de búsqueda
                    },
                  ),
                ],
              ),
            ),
            actions: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 1.0,
                  ),
                ),
                margin: const EdgeInsets.only(right: 16.0),
                child: IconButton(
                  icon: const Icon(Icons.add,
                      color: Colors.white), // Icono de agregar
                  onPressed: () {
                    // Acción para agregar
                  },
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 1.0,
                  ),
                ),
                margin: const EdgeInsets.only(right: 16.0),
                child: IconButton(
                  icon: const Icon(Icons.delete,
                      color: Colors.white), // Icono de eliminar
                  onPressed: () {
                    // Acción para bote de basura
                  },
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 30), // Espacio en blanco
              Center(
                child: Container(
                  width: 336,
                  height: 166,
                  decoration: ShapeDecoration(
                    image: const DecorationImage(
                      image: AssetImage(
                          "../lib/resources/futbol7.jpeg"), // Asegúrate de que la ruta sea correcta
                      fit: BoxFit.cover,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),

              Center(
                child: Container(
                  width: 336,
                  height: 166,
                  decoration: ShapeDecoration(
                    image: const DecorationImage(
                      image: AssetImage(
                          "../lib/resources/basketball.jpeg"), // Asegúrate de que la ruta sea correcta
                      fit: BoxFit.cover,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),

              Center(
                child: Container(
                  width: 336,
                  height: 166,
                  decoration: BoxDecoration(
                    color: const Color(0xFF395387),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 20), // Espacio inferior
                      child: Text(
                        "Torneo Futbol 7...",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
