import 'package:flutter/material.dart';

class Tarjeta1 extends StatelessWidget {
  const Tarjeta1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(leading: Icon(Icons.wallet),
          title: Text('Tarjeta'),
          subtitle: Text('Minitarjeta'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8, bottom: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: (){}, child: const Text('Cancelar')),
                TextButton(onPressed: (){}, child: const Text('Aceptar'))
              ],
            ),
          )
        ],
      ),
    );
  }
}