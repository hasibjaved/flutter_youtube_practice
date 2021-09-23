import 'package:flutter/material.dart';
class BgImg extends StatelessWidget {
  const BgImg({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Image.asset('assets/bg.jpg',
                fit: BoxFit.cover,);
                
  }
}