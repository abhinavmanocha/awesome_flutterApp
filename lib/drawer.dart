import 'package:flutter/material.dart';

class MyDrawer  extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
  return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: const <Widget>[
          DrawerHeader(
            child: Text("I am a Drawer"),
            decoration: BoxDecoration(color: Colors.purple),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Abhinav Manocha"),
            subtitle: Text("This is a subtitle"),
            trailing: Icon(Icons.camera_enhance),
            //onTap: (){},
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Abhinav Manocha"),
            subtitle: Text("This is a subtitle"),
            trailing: Icon(Icons.camera_enhance),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Abhinav Manocha"),
            subtitle: Text("This is a subtitle"),
            trailing: Icon(Icons.camera_enhance),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Abhinav Manocha"),
            subtitle: Text("This is a subtitle"),
            trailing: Icon(Icons.camera_enhance),
          ),
        ],
      ),
    );
  }
}