import 'package:flutter/material.dart';
import 'package:modulos/personalWidgets/export_widgets.dart';

class Cardv extends StatelessWidget{
  const Cardv({super.key});

  @override
  Widget build(BuildContext context) {
    // j
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card View'),
        
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [Tarjeta1(), 
        SizedBox(height: 15,), 
        Tarjeta2(imagenUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSD_FYi0JgFIWlHPF9Xnz-98i6mU-Th-z-9kQ&s', texto: 'Border Collie'),
        SizedBox(height: 15,), 
        Tarjeta2(imagenUrl: 'https://www.hola.com/horizon/landscape/2ba9dcaea342-husky-t.jpg', texto: 'Husky Siberiano',),
        SizedBox(height: 15,), 
        Tarjeta2(imagenUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5ntxNeQKRb8rOPegwos0zOcJqI6ki3V3TAg&s', texto: 'San Bernardo',),
        SizedBox(height: 15,), 
        Tarjeta2(imagenUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNnvolNJtziSAmpkmfY2K20XEqLAP-txydkQ&s'),
        SizedBox(height: 15,),]
      )
    );
  }
}

