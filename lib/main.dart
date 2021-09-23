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
     body: Padding(
       padding: const EdgeInsets.all(8.0),
       child: Container(
         color: Colors.black,
         width: MediaQuery.of(context).size.width,
         height: MediaQuery.of(context).size.height,
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: Column(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: <Widget>[
                  Container(
               padding: const EdgeInsets.all(8),
               width: 100,
               height: 100,
               color: Colors.red,
             ),
              Container(
               padding: const EdgeInsets.all(8),

               width: 100,
               height: 100,
               color: Colors.green,
             ),
              Container(
               padding: const EdgeInsets.all(8),

               width: 100,
               height: 100,
               color: Colors.blue,
             ),
               ],
             ),
         ),
       ),
     )
     
    );
  }
}

