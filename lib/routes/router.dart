import 'package:flutter/material.dart';
import 'package:modulos/modelo/modelo.dart';
import '../pantallas/rutas.dart';

class AppRoutes{
  static const initialRoute='home';
  static final menuop=<Menuoptions>[
    Menuoptions(route: 'home', icono: Icons.home, nombre: 'Principal', pantalla: const Principal()),
    Menuoptions(route: 'listview1', icono: Icons.list, nombre: 'Listview1', pantalla: const Listview1()),
    Menuoptions(route: 'listview2', icono: Icons.list_sharp, nombre: 'Listview2', pantalla: const Listview2()),
    Menuoptions(route: 'cardv', icono: Icons.cake, nombre: 'Card View', pantalla: const Cardv()),
    Menuoptions(route: 'alerta', icono: Icons.alarm, nombre: 'Alertas', pantalla: const Alerta()),
    Menuoptions(route: 'avatar', icono: Icons.person, nombre: 'Avatar', pantalla: const Avatar()),
    Menuoptions(route: 'animacion', icono: Icons.animation, nombre: 'Contenedor animado', pantalla: const ContenedorAnimado()),
    Menuoptions(route: 'input', icono: Icons.input, nombre: 'Inputs', pantalla: const InputScreen())
  ];
  static Map<String, Widget Function(BuildContext)>regresarRutas(){
   Map<String, Widget Function(BuildContext)>appR={};
   for(final opcion in menuop){
    appR.addAll({opcion.route: (BuildContext context)=>opcion.pantalla});
   }
   return appR; 
  }
  // static Map<String, Widget Function(BuildContext)> routes=
  //   {
  //     "listview1":(BuildContext context){
  //       return Listview1();
  //     },
  //     "listview2":(BuildContext context){
  //       return Listview2();
  //     },
  //     "home":(BuildContext context)=>Principal()
  //   };
  static Route<dynamic>? generate(RouteSettings rs){
    return MaterialPageRoute(builder: (context){
      return const Listview1();
    },);
  }
}

