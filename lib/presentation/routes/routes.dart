import 'package:d4v4/presentation/pages/forgot.dart';
import 'package:d4v4/presentation/pages/home.dart';
import 'package:d4v4/presentation/pages/login.dart';
import 'package:flutter/material.dart';

Map<String,WidgetBuilder>getRoutes(){
  return<String,WidgetBuilder>{
    'login': (BuildContext context) => LoginPage(),
    'forgot': (BuildContext context) => ForgotPage(),
    'home': (BuildContext context) => HomePage()
    };
  }
