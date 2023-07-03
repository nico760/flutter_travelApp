import 'package:flutter/material.dart';
import 'package:reto_tres/presentation/places/screens/list_places.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Medellin App",
      theme: ThemeData(
        colorSchemeSeed: Colors.indigo,  
        brightness: Brightness.light,
      ),
      debugShowCheckedModeBanner: false,
      home: const ListPlaces(),
    );
  }
}
