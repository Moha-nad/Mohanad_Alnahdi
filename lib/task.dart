import 'package:flutter/material.dart';

void main() {
  runApp(const Mohanad());
}

class Mohanad extends StatelessWidget {
  const Mohanad({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: Scaffold(
        appBar: AppBar(title: Text('First and Last Task',style: TextStyle(fontSize: 20),),
        backgroundColor: Colors.blue,
        centerTitle: true,
        ),

        body: Center(
          child: Text("HELLO THIS IS SCAFFOLD BODY"),
        ),
        backgroundColor: Colors.green,
        ),
    );
  }
}