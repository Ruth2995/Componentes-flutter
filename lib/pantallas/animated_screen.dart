import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContenedorAnimado extends StatefulWidget{
  const ContenedorAnimado({super.key});

  @override
  State<ContenedorAnimado> createState() => _ContenedorAnimadoState();
}

class _ContenedorAnimadoState extends State<ContenedorAnimado>{
  double ancho=100;
  double alto=100;
  Color color_caja=Colors.red;
  BorderRadiusGeometry borde=BorderRadius.circular(20);
  void cambiarConte(){
    final random=Random();
    if (ancho<501 && alto<501){
      ancho=random.nextInt(200).toDouble()+10;
      alto=random.nextDouble()*200+10;
      print(ancho);
      print(alto);

      color_caja=Color.fromARGB(255, random.nextInt(255), random.nextInt(255), random.nextInt(255));
      BorderRadius.circular(random.nextInt(30).toDouble());
      setState((){
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animación'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.bounceInOut,
          width: ancho,
          height: alto,
          decoration: BoxDecoration(
            color: color_caja,
            borderRadius: borde
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        cambiarConte();
      },
      child: const Icon(Icons.face_3_rounded),),
    );
  }
}



