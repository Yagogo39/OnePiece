import 'package:flutter/material.dart';
import 'package:one_piece/src/widgets/header_widget.dart';
import 'package:one_piece/src/widgets/lista_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 16, 16, 16),
      body: Column(
        children: <Widget> [
          HeaderWidget(),
          ListaWidget()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 95, 25, 208),
        onPressed: (){},
        child: const Icon(Icons.add, color: Colors.white,),
        ),
    );
  }
}