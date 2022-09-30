import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String name = "Don't Press the red button";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Instogram"),
        ),
        body: Container(
          child: Text(name, style: TextStyle(fontSize: 50),),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              name = "Why did you click the button?";
            });
          },
          child: Icon(Icons.change_circle, color: Colors.red,),
        )
        ),
    );
  }
}