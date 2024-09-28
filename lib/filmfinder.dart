import 'package:film_finder_mobile/screens/search/search.dart';
import 'package:flutter/material.dart';

class Filmfinder extends StatelessWidget {
  const Filmfinder({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Search(),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
        useMaterial3: true,
      ),
    );
  }
}
