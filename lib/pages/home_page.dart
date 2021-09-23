import 'package:flutter/material.dart';
import 'package:flutter_youtube_practice/drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
 

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _textController = TextEditingController();
  var myText = 'Change me';
  var url = Uri.parse("https://jsonplaceholder.typicode.com/photos") ;
  var data;

  @override
  void initState() {
    super.initState();
    getData();
  }
  getData() async{
   var res = await http.get(url); 
   
    data = jsonDecode(res.body);
    setState(() {});
    print(data);
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
       child: data != null ?  ListView.builder(itemBuilder: (context,index){
         return Padding(
           padding: const EdgeInsets.all(8.0),
           child: ListTile(
             title: Text(data[index]["title"]),
             subtitle: Text('ID : ${data[index]['id']}'),
             leading: Image.network(data[index]["url"]),
           ),
         );
       },
       itemCount: data.length,
       )
       :Center(child: CircularProgressIndicator(
            
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

