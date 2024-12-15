import 'package:flutter/material.dart';
import 'package:modulos/personalWidgets/export_widgets.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formkey=GlobalKey<FormState>();
    final Map<String, String> datos={
      'nombre':'nm',
      'apellido':'ap',
      'correo':'cr',
      'contra':'ctr',
      'rol':'admin'
    };
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs'),
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Form(
          key: formkey,
          child: Column(
            children: [
              inputPer(ht: 'Nombre', helperT: 'Solo letras', suf:Icons.abc_sharp, llaveMapa: 'nombre', mapa: datos,),
              SizedBox(height: 20,),
              inputPer(ht: 'Apellido', helperT: 'Solo letras', suf: Icons.help, llaveMapa: 'apellido', mapa: datos,),
              inputPer(ht: 'E-mail', helperT: 'Con @ y extensión', suf: Icons.email, tipo: TextInputType.emailAddress, llaveMapa: 'correo', mapa: datos,),
              SizedBox(height: 20,),
              inputPer(ht: 'Contraseña', helperT: 'Con 8 caracteres', suf: Icons.password, ot: true, llaveMapa: 'contra', mapa: datos,),
              SizedBox(height: 20,),
              DropdownButtonFormField(
                items: [
                  DropdownMenuItem(child: Text('admin'), value: 'admin',),
                  DropdownMenuItem(child: Text('operador'), value: 'operador',),
                  DropdownMenuItem(child: Text('empleado'), value: 'empleado',),
                ], onChanged: (value){
                  datos['rol']=value ?? 'sin rol';
                }),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                if(!formkey.currentState!.validate()){
                  print('Formulario incorrecto');
                }else{
                  print(datos);
                }
              }, child: SizedBox(
                width: double.infinity,
                child: Center(
                  child: Text('Enviar'),
                ),
              ))
            ],
          ),
        ),),
      ),
    );
  }
}

