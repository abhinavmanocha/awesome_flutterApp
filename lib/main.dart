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
            padding: const EdgeInsets.all(8),
            width: 100,
            height: 100,
            clipBehavior: Clip.antiAlias,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.red,
              //shape: BoxShape.circle
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.blue,
                  blurRadius: 300,
                )
              ]
            ),
            child:const Text("This is a ceneterd text inside of a div", 
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            ),
          ),
        ),
    );
  }
}