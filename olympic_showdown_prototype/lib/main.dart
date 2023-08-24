import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF135BBA),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(72), // Altura del AppBar
          child: Column(
            children: [
              const SizedBox(height: 16), // Espacio encima del AppBar
              AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                title: Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0),
                    borderRadius: BorderRadius.circular(20.0),
                    border: Border.all(
                      color: Colors.white,
                      width: 1.0,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: const Row(
                    children: [
                      Icon(Icons.search, color: Colors.black),
                      SizedBox(width: 8.0),
                      Expanded(
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
                    ],
                  ),
                ),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.add),
                    onPressed: () {
                      // Acción para agregar
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      // Acción para bote de basura
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            const SizedBox(height: 30), // Espacio en blanco
            Center(
              child: Container(
                width: 336,
                height: 166,
                decoration: ShapeDecoration(
                  image: const DecorationImage(
                    image: AssetImage("../lib/resources/futbol7.jpeg"),
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
                    image: AssetImage("../lib/resources/basketball.jpeg"),
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
                  color: const Color(0xFF1A73E9),
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                    image: NetworkImage("https://via.placeholder.com/336x166"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: const Center(
                  child: Text(
                    "Torneo Futbol 7...",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
