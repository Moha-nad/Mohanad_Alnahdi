import 'package:flutter/material.dart';
import 'Userinfocard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Myhomepage(),
    );
  }
}

class Myhomepage extends StatelessWidget {
  const Myhomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Custom Widget',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.teal,
      ),

      body: Container(
        color: Colors.grey[300],
        child: ListView(
          children: [

            Userinfocard(
                name: 'Mohanad',
                email: 'UserName@gmail.com',
                role: 'Student',
            ),

            Userinfocard(
              name: 'Mohamed',
              email: 'UserName@gmail.com',
              role: 'Student',
            ),

            Userinfocard(
              name: 'Ali',
              email: 'UserName@gmail.com',
              role: 'Student',
            ),

            Userinfocard(
              name: 'saleh',
              email: 'UserName@gmail.com',
              role: 'Student',
            ),

            Userinfocard(
              name: 'adel',
              email: 'UserName@gmail.com',
              role: 'Student',
            ),

            Userinfocard(
              name: 'hamza',
              email: 'UserName@gmail.com',
              role: 'Student',
            ),

            Userinfocard(
              name: 'yaser',
              email: 'UserName@gmail.com',
              role: 'Student',
            ),
          ],
        ),
      ),
    );
  }
}
