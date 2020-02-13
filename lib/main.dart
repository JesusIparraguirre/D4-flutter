import 'package:d4v4/presentation/routes/routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes: getRoutes(),
      initialRoute: 'login',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
    );
  }
}
