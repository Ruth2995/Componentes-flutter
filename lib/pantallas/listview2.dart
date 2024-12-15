import 'package:flutter/material.dart';

final animales=["perro", "gato", "caballo"];


class Listview2 extends StatelessWidget {
  const Listview2({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("list view 2"),
        elevation: 5
      ),
      body: ListView.separated
      (itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(animales[index]),
          trailing: const Icon(Icons.abc_rounded),
          onTap: (){
          //print(animales[index]);
        }
        );  }, 
      separatorBuilder: (BuildContext context, int index) { return const Divider(); }, 
      itemCount: animales.length,
      ),
    );
  }
  
}