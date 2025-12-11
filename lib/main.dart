import 'package:flutter/material.dart';
import 'SecondPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
      ),

      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();

  void _Save(){
    setState(() {
      _controller2.text = _controller1.text;
    });
  }

  void _Nav(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => Secondpage(text: _controller2.text,)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text field & Navigation',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Color.fromARGB(255, 10, 25, 74)),),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            SizedBox(height: 10,),
            SizedBox(
              height: 40,
              width: 250,
              child: TextField(
                controller: _controller1,
                decoration: InputDecoration(
                  labelText: 'Text:',
                  hintText: 'Enter the text here',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                ),
              ),
            ),
            SizedBox(height: 10,),
            SizedBox(
              height: 40,
              width: 250,
              child: TextField(
                controller: _controller2,
                decoration: InputDecoration(
                  labelText: 'Store:',
                  hintText: 'Saved here',
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                ),
                readOnly: true,
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: _Save, child: Text('Save',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold))),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: _Nav, child: Text('Go',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold))),
          ],
        ),
      ),
    );
  }
}
