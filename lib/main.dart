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
        body: Center(
          child: Container(
            height: 100,
            color: Colors.teal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:<Widget> [
                Container(
                  padding: const EdgeInsets.all(8),
                  width: 100,
                  height: 100,
                  color: Colors.red,
                  alignment: Alignment.center,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                  alignment: Alignment.center,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  width: 100,
                  height: 100,
                  color: Colors.green,
                  alignment: Alignment.center,
                )
              ],
            ),
          )
        ),
    );
  }
}