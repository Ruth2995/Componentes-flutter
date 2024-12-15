import 'package:flutter/material.dart';

import 'package:modulos/routes/router.dart';
import 'package:modulos/theme/tema.dart';

//void main() => runApp(const MyApp());

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de flutter'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index)=>ListTile(
          title: Text(AppRoutes.menuop[index].nombre),
          leading: Icon(AppRoutes.menuop[index].icono, color: Tema.primary),
          onTap: (){
            //OPCION1
            /*sin rutas definidas
            final r=MaterialPageRoute(builder: (context){
              return Listview2();
            });
            Navigator.push(context, r);*/
            //OPCION2
            Navigator.pushNamed(context, AppRoutes.menuop[index].route);
          },
        ),
        separatorBuilder: (context, index)=>const Divider(),
        itemCount: AppRoutes.menuop.length,

      ),
    );
  }
}