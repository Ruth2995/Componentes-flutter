import 'package:flutter/material.dart';

class Tarjeta2 extends StatelessWidget{
  final String imagenUrl;
  final String? texto;
  const Tarjeta2({super.key, required this.imagenUrl, this.texto});

  @override
  Widget build(BuildContext context) {
    // a
    return Card(
      // para bordes en la imagen
      clipBehavior: Clip.antiAlias,
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      child: Column(
        children: [
          FadeInImage(
            placeholder: const AssetImage("assets/loadd.gif"), 
            image: NetworkImage(imagenUrl),
          height: 220,
          width: double.infinity,
          fit: BoxFit.cover,
          ),
          if (texto!=null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text(texto ?? 'No hay título'),
            ),
        ],
      ),
    );
  }

}