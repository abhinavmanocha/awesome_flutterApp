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
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var myText = "Change My Name";
  TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("This is my title"),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Card(
            child: Column(
              children: <Widget>[
                Image.asset(
                  "assets/tezos.jpg",
                ),
                const SizedBox(
                  height: 20,
                ),
                 Text(
                  myText,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                 Padding(
                  padding: EdgeInsets.all(16.0),
                  child: TextField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                        hintText: "This is a hint", labelText: "Hi"),
                  ),
                )
              ],
            ),
          ),
        ),
      )),
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
        onPressed: () {
          myText = _nameController.text;
          setState(() {});
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
