import 'package:d4v4/enviroments/styles.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      drawer: _menu(),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: colorAzul,
            expandedHeight: 200.0,
            floating: true,
            pinned: true,
            flexibleSpace: ListView(
              children: <Widget>[
                SizedBox(height: 75.0,),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0,bottom: 10.0),
                  child: Text('Bienvenido',style: TextStyle(color: Colors.white,fontSize: 24.0)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:8.0),
                  child: Material(
                    borderRadius: BorderRadius.circular(10.0),
                        child: TextField(
                        decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search)
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  child: Column(
                    children: <Widget>[
                      Text('Aplicaciones que más usas')
                    ],
                  ),
                )
              ]
            )
          ),
          SliverFixedExtentList(
            itemExtent: 200.0,
            delegate: SliverChildListDelegate(
              [
                Container(color: Colors.green[900]),
                Container(color: Colors.green[800]),
                Container(color: Colors.green[700]),
                Container(color: Colors.green[600]),
                Container(color: Colors.green[500]),
                Container(color: Colors.green[400]),
                Container(color: Colors.green[300]),
                Container(color: Colors.green[200]),
                Container(color: Colors.green[100]),
                Container(color: Colors.white54),
                Container(color: Colors.red[100]),
                Container(color: Colors.red[200]),
                Container(color: Colors.red[300]),
                Container(color: Colors.red[400]),
                Container(color: Colors.red[500]),
                Container(color: Colors.red[600]),
                Container(color: Colors.red[700]),
                Container(color: Colors.red[800]),
                Container(color: Colors.red[900]),
              ]
            )
          )
        ],
      ),
    );
  }

  Widget _menu(){
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: <Color>[
            colorAzul, 
            Color(0xFF0172ce)
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter)
        ),
        child: ListView(
          children: <Widget>[
            DrawerHeader(child: _menuheader(),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.white54,),
              title: Text('Inicio', style: TextStyle(color: Colors.white54),),
              subtitle: Text('Descripcion corta',style: TextStyle(color: Colors.white54),),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.white54,),
              title: Text('Preguntas frecuentes', style: TextStyle(color: Colors.white54),),
              subtitle: Text('Descripcion corta',style: TextStyle(color: Colors.white54),),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.white54,),
              title: Text('Mesa de servicio', style: TextStyle(color: Colors.white54),),
              subtitle: Text('Descripcion corta',style: TextStyle(color: Colors.white54),),
            ),
            ListTile(
              leading: Icon(Icons.highlight_off, color: Colors.white54,),
              title: Text('Cerrar sesión',style: TextStyle(color: Colors.white54),),
            )
          ],
        ),
      ),
    );
  }

  Widget _menuheader(){
    return DrawerHeader(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/perfil.jpg'),
            radius: 35.0,
          ),
          SizedBox(
            width: 30.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Jose Luis',
                style: TextStyle(
                  color: Colors.white,
                  fontSize:20.0, 
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2.0),
                child: Text('lucho_perales',
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 0.6),
                    fontSize: 14.0
                  ),
                ),
              )
            ],
          )
        ],
      )
    );
  }
}