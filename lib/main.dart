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
        body: Container(
          child: const Text("Hi flutter again"),
        ),
    );
  }
}