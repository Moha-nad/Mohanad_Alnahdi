import 'package:flutter/material.dart';

class Secondpage extends StatelessWidget {
  final String text;

  Secondpage({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Color.fromARGB(255, 10, 25, 74)),),
        backgroundColor: Colors.blueGrey,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color.fromARGB(255, 10, 25, 74)),),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('Back',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold))),
        ],),
      ),
    );
  }
}
