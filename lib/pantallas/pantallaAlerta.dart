// ignore: file_names
// import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Alerta extends StatelessWidget {
  const Alerta({super.key});

  void ventanaAlerta(BuildContext context){
    showDialog(context: context, builder: (context){
      return AlertDialog(
        elevation: 5,
        title: const Text('Titulo xd'),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        content: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Esto es ventana de alerta ANDROID'),
            FlutterLogo(size: 100,)
          ],
        ),
        actions: [
          TextButton(onPressed: ()=>Navigator.pop(context), child: const Text('Cancelar'))
        ],
      );
    });
  }

  void ventanaAlertaIOS(BuildContext context){
    showCupertinoDialog(context: context, builder: (BuildContext context){
      return CupertinoAlertDialog(
        title: const Text('Titulo IOS'),
        content: const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Esto es ventana de alerta IOS'),
            FlutterLogo(size: 100,)
          ],
        ),
        actions: [
          TextButton(onPressed: (){
            Navigator.pop(context);}, child: const Text('Cancelar'))
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ventana alerta'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            ventanaAlerta(context);
            // ventanaAlertaIOS(context);
            // PARA TELEFONO:
            // Platform.isAndroid ? ventanaAlerta(context) : ventanaAlertaIOS(context);
            
          }, 
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Mostrar alerta', style: TextStyle(fontSize: 20, color: Colors.black),),
          )),
      ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          Navigator.pop(context);
        },
        child: const Icon(Icons.album),),
    );
  }
}