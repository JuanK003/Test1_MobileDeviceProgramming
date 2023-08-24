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
        backgroundColor: Color(0xFF135BBA),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0),
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                  color: Colors.white, width: 1.0), // Borde de color blanco
            ),
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              children: [
                Icon(Icons.search, color: Colors.black),
                SizedBox(width: 8.0),
                Expanded(
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintText: "Search",
                      hintStyle:
                          TextStyle(color: Colors.white.withOpacity(0.7)),
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
              icon: Icon(Icons.add),
              onPressed: () {
                // Acción para agregar
              },
            ),
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                // Acción para bote de basura
              },
            ),
          ],
        ),
      ),
    );
  }
}
