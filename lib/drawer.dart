import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget {
  const MyDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // DrawerHeader(child: Text('Drawer Header' ,style: TextStyle(color: Colors.white),),
            // decoration: BoxDecoration(color: Colors.purpleAccent),),
            UserAccountsDrawerHeader(
              accountName: Text('Haseeb Javaid'), 
            accountEmail: Text('haseeb.javaid@fwo.com.pk'),
            currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage(
              'https://images.unsplash.com/photo-1581803118522-7b72a50f7e9f?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8bWFufGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60'
            ),),
            ),
            // ListTile(
            //   leading: Icon(Icons.person),
            //   title: Text('Account'),
            // ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              subtitle: Text('My Home'),
              trailing: Icon(Icons.access_alarm_rounded),
            ),
            ListTile(
              leading: Icon(Icons.mail),
              title: Text('Mail'),
              subtitle: Text('My Mail'),
              trailing: Icon(Icons.access_time_sharp),
            ),
            ListTile(
              leading: Icon(Icons.contact_phone),
              title: Text('Contact Us'),
              subtitle: Text('Company Contact Details'),
              trailing: Icon(Icons.zoom_out_map),
            )
          ],
          
        ),
      );
  }
}
