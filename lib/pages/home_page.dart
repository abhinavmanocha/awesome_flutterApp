import 'package:awesome_app/drawer.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // var myText = "Change My Name";
  // TextEditingController _nameController = TextEditingController();

  var url = "https://jsonplaceholder.typicode.com/photos";
  // ignore: prefer_typing_uninitialized_variables
  var data;

  @override
  void initState() {
    super.initState();
    fetchdata();
  }

  Future<void> fetchdata() async {
    var res = await http.get(Uri.parse(url));
    data = jsonDecode(res.body);
    setState(() {});
    // print(data);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("This is my title"),
      ),
      body: data != null
          ? ListView.builder(
              itemBuilder: (context,index){
                return ListTile(
                  title: Text(data[index]["title"]),
                  subtitle: Text("ID: ${data[index]["id"]}"),
                  leading: Image.network(data[index]["url"]),
                );
              },
              itemCount: data.length,
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
      drawer: const MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}
