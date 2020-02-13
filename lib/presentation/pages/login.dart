import 'package:d4v4/presentation/shared/btn-login.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondo(context),
          _form(context)
        ],
      ),
    );
  }
}

Widget _fondo(BuildContext context){
  final _size = MediaQuery.of(context).size;
  return Container(
            height: _size.height*0.5,
            foregroundDecoration: BoxDecoration(
              color: Color.fromRGBO(0, 58, 112, 0.85),
            ),
            child: Image(
              image: AssetImage('assets/images/img1.jpeg'),
              fit: BoxFit.cover,
            ),
  );
}

Widget _form(BuildContext context){
  final _size = MediaQuery.of(context).size;
  return Container(
    height: _size.height*0.6,
    margin: EdgeInsets.only(top: _size.height*0.4,left:10.0,right:10.0),
    padding: EdgeInsets.only(top:75.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: Colors.white,
    ),
    child: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 15.0,left: 15.0,right: 15.0),
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.person),
                labelText: 'DNI',
                alignLabelWithHint: true,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0,left: 15.0,right: 15.0),
            child: TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.lock),
                labelText: 'Contraseña',
                alignLabelWithHint: true,
              ),
            ),
          ),
          SizedBox(
            height: 65.0,
          ),
          BtnGradiente(context)
        ],
      ),
    ),
  );
}