import 'package:flutter/material.dart';

class inputPer extends StatelessWidget {
  final String? ht;
  final String? labelT;
  final String? helperT;
  final IconData? pre;
  final IconData? suf;
  final TextInputType? tipo;
  final bool ot;
  final String llaveMapa;
  final Map<String,String> mapa;
  const inputPer({super.key, this.ht, this.labelT, this.helperT, this.pre, this.suf, this.tipo, this.ot=false, required this.llaveMapa, required this.mapa
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      keyboardType: tipo,
      obscureText: ot,
      textCapitalization: TextCapitalization.words,
      onChanged: (value){
        mapa[llaveMapa]=value;
        print(value);
      },
      validator: (value) {
        if(value==null) return "campo requerido";
        return value.length<3 ? 'Faltan carácteres':null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: ht,
        labelText: labelT,
        helperText: helperT,
        suffix: Icon(suf),
        prefix: Icon(pre)
      ),
    );
  }
}