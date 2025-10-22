import 'package:flutter/material.dart';

void main() {
  runApp(const First());
}

class First extends StatelessWidget {
  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          title: Text("First Colmun and Row and Icon", style: TextStyle(fontSize: 17)),
          backgroundColor: const Color.fromARGB(255, 107, 153, 109),
          centerTitle: true,
        ),

        backgroundColor: Color.fromARGB(255, 142, 185, 160),

        body: Center(
          child: Column(
            children: [
              Text("Colmun(1)\n"),
              Text("Colmun(2)\n"),
              Text("Colmun(3)\n"),
              Text("Colmun(4)\n"),
              Text("Colmun(5)\n"),

              Row(
                children: [   
                  SizedBox(width: 50,),
                  Text("Row(1)\t\t"),
                  Text("Row(2)\t\t"),
                  Text("Row(3)\t\t"),
                  Text("Row(4)\t\t"),
                  Text("Row(5)"),
                ],
              ),

              Row(
                children: [
                 SizedBox(width: 80,),
                 Icon(Icons.star,size: 40,color: Color.fromARGB(255, 255, 232, 25)),
                 Icon(Icons.star,size: 40,color: Color.fromARGB(255, 255, 232, 25)),
                 Icon(Icons.star,size: 40,color: Color.fromARGB(255, 255, 232, 25)),
                 Icon(Icons.star,size: 40,color: Color.fromARGB(255, 255, 232, 25)),
                 Icon(Icons.star,size: 40,color: Color.fromARGB(255, 255, 232, 25)),
              ],)
            ],
          ),
        ),
      ),
    );
  }
}
