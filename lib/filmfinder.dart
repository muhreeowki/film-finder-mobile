import 'package:film_finder_mobile/screens/search/search.dart';
import 'package:flutter/material.dart';

class Filmfinder extends StatelessWidget {
  const Filmfinder({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Search(),
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color.fromRGBO(86, 80, 80, 171),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        colorSchemeSeed: const Color.fromRGBO(86, 80, 80, 171),
      ),
      themeMode: ThemeMode.dark,
    );
  }
}
