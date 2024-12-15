import 'package:flutter/material.dart';

final juegos=["juego1", "juego2", "juego3"];
class Listview1 extends StatelessWidget{
  const Listview1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("list view 1"),
        elevation: 5
      ),
      body: ListView(
        children:  [
          ...juegos.map((e) {return ListTile(
            title: Text(e),
            trailing: const Icon(Icons.ac_unit),
          );
          }),
          const Divider()
        ],
      ),
    );
  }
  
}