import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
  home: const HomePage(),
    theme: ThemeData(
    primarySwatch: Colors.purple,
  ),
  ));
}

//Not supposed to change, this is stateless
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("This is my title"),
        ),
        body: const Center(
          child: Card(
            
          )
        ),
        drawer: Drawer(
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
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: const Icon(
            Icons.eject
          ),
          ),
        );
  }
}