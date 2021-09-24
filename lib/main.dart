// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_youtube_practice/pages/login_page.dart';
import 'package:flutter_youtube_practice/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'pages/home_page.dart';

Future main() async
{
  WidgetsFlutterBinding.ensureInitialized();

  // Constants.prefs = await SharedPreferences.getInstance();
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
