import 'package:flutter/material.dart';
import 'package:flutter_youtube_practice/bg.dart';
import 'package:flutter_youtube_practice/pages/home_page.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body:Stack(
        fit: StackFit.expand,
        children: <Widget>[BgImg(),
         Center(
           child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(child: Card(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Form(child: Column(
                      children: <Widget>[
                        TextFormField(decoration: InputDecoration(hintText: 'Enter Username',labelText: 'User Name'),
                        ),
                        SizedBox(height: 20,),
                        
                         TextFormField(decoration: InputDecoration(hintText: 'Enter Password', labelText: 'Password'),
                        obscureText: true,
                        ),
                      ],
                    )),
                    
                  ),
                   SizedBox(height: 20,
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: RaisedButton(onPressed: (){
                      //  Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                      Navigator.pushNamed(context, '/home');
                     },
                     child: Text('Sign In'),
                     color: Colors.orange,
                     textColor: Colors.white,),
                   )
                   
                ],
              ),
            ),),
        ),
      ),
         ),
        ],
      )
    );
  }
}
