import 'package:flutter/material.dart';
import 'package:modulos/routes/router.dart';
import 'package:modulos/theme/tema.dart';
// import 'pantallas/rutas.dart';
// import 'package:modulos/pantallas/rutas.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.regresarRutas(),
      onGenerateRoute: (settings)=>AppRoutes.generate(settings),
      theme: Tema.lightheme,
    );
  }
}
