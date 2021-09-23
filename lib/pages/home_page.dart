import 'package:flutter/material.dart';
import 'package:flutter_youtube_practice/change_name_card.dart';
import 'package:flutter_youtube_practice/drawer.dart';
class HomePage extends StatefulWidget {
 

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _textController = TextEditingController();
  var myText = 'Change me';

  @override
  void initState() {
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
    // return Container(
    //   color:Colors.blue,
    //   child: Text('Hello World'),
      
    // );

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Card(
            child: changeNameCard(myText: myText, textController: _textController),
          ),
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          myText = _textController.text;
          setState(() {
            
          });
        },
        child: Icon(Icons.refresh),
        // mini: true,

      ),

     
    );
  }
}

