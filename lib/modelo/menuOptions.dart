import 'package:flutter/material.dart';

class Menuoptions {
  final String route;
  final IconData icono;
  final String nombre;
  final Widget pantalla;

  Menuoptions({
    required this.route, 
    required this.icono,
    required this.nombre,
    required this.pantalla
  });
}