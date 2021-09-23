import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    title: 'Awesome App',
    home: HomePage(),
  ));
}
class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   color:Colors.blue,
    //   child: Text('Hello World'),
      
    // );

    return Scaffold(
      appBar: AppBar(
        title: Text('Awesome App'),
      ),
     body:Center(
       
       child: Container(
         padding: const EdgeInsets.all(8),
         alignment: Alignment.center,
        //  color: Colors.teal,
         width: 100,
         height: 100,
         decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(color: Colors.grey,
          blurRadius: 5,
          offset: Offset(2.0,5.0))],
           color: Colors.teal,
           gradient: LinearGradient(colors: [
             Colors.yellow, Colors.pink
           ],
           )
           
           ),
         child: Text('This is circle',
         textAlign: TextAlign.center,
         style: TextStyle(
           color: Colors.black,
           fontWeight: FontWeight.bold,
           fontSize: 20,
         ),),
       ),
     )
    );
  }
}