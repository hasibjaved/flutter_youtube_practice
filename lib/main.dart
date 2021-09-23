import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_youtube_practice/pages/login_page.dart';
import 'pages/home_page.dart';

void main()
{
  runApp(MaterialApp(
    title: 'Awesome App',
    home: LoginPage(),
    theme: ThemeData(
      primarySwatch: Colors.purple
    ),
    routes: {
      '/login':(context)=>LoginPage(),
      '/home':(context)=>HomePage(),
    },
  ));
}
