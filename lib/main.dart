import 'package:flutter/material.dart';
import 'package:one_piece/src/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}
//Clase de arranque
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Pagina Principal",
      home: HomePage(),
    );
  }
}
