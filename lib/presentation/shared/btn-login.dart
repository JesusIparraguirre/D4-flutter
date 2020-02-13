import 'package:d4v4/enviroments/styles.dart';
import 'package:flutter/material.dart';

Widget BtnGradiente(BuildContext context){
  return Container(
    width: double.infinity,
    height: 50.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.0),
      gradient: LinearGradient(colors: <Color>[colorAzul, Color(0xFF0172ce)])
    ),
    child: Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(50.0),
        child: Center(
          child: Text('Iniciar Sesión',style: TextStyle(color: Colors.white),
          ),
        ),
        onTap: ()=>Navigator.pushNamed(context, 'home'),
      ),
    ),
  );
}