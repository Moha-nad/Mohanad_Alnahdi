import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.teal,
      ),

      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              color: Colors.white,
              child: Row(
                children: [
                  Container(
                      height: 100,
                      width: 150,
                      color: Colors.pink[400],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('iPhone',style: TextStyle(fontSize: 35,color: Colors.white),),
                        ],
                      )
                  ),

                  SizedBox(width: 14,),

                  Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('iPhone',style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(height: 5,),
                          Text('iPhone is the stylist Phone ever',style: TextStyle(fontSize: 11),),
                          SizedBox(height: 5,),
                          Text('Price: 1000',style: TextStyle(fontSize: 11),),
                        ],
                      )
                  ),
                ],
              ),
            ),
//------------------------------------------------------------------------------
            SizedBox(height: 10,),

            Container(
              color: Colors.white,
              child: Row(
                children: [
                  Container(
                      height: 100,
                      width: 150,
                      color: Colors.blue[900],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('pixel 1',style: TextStyle(fontSize: 35,color: Colors.white),),
                        ],
                      )
                  ),

                  SizedBox(width: 14,),

                  Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Pixel',style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(height: 5,),
                          Text('Pixel is the most featureful ph',style: TextStyle(fontSize: 11),),
                          Text('one ever',style: TextStyle(fontSize: 11),),
                          SizedBox(height: 5,),
                          Text('Price: 800',style: TextStyle(fontSize: 11),),
                        ],
                      )
                  ),
                ],
              ),
            ),
//------------------------------------------------------------------------------
            SizedBox(height: 10,),

            Container(
              color: Colors.white,
              child: Row(
                children: [
                  Container(
                      height: 100,
                      width: 150,
                      color: Colors.lightGreenAccent[700],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('laptop',style: TextStyle(fontSize: 35,color: Colors.white),),
                        ],
                      )
                  ),

                  SizedBox(width: 14,),

                  Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Laptop',style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(height: 5,),
                          Text('laptop is most productive develop',style: TextStyle(fontSize: 11),),
                          Text('ment tool',style: TextStyle(fontSize: 11),),
                          SizedBox(height: 5,),
                          Text('Price: 2000',style: TextStyle(fontSize: 11),),
                        ],
                      )
                  ),
                ],
              ),
            ),
//------------------------------------------------------------------------------
            SizedBox(height: 10,),

            Container(
              color: Colors.white,
              child: Row(
                children: [
                  Container(
                      height: 100,
                      width: 150,
                      color: Colors.lime,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('tablet',style: TextStyle(fontSize: 40,color: Colors.white),),
                        ],
                      )
                  ),

                  SizedBox(width: 14,),

                  Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Tablet',style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(height: 5,),
                          Text('Tablet is the most useful device',style: TextStyle(fontSize: 11),),
                          Text('ever for meeting',style: TextStyle(fontSize: 11),),
                          SizedBox(height: 5,),
                          Text('Price: 1500',style: TextStyle(fontSize: 11),),
                        ],
                      )
                  ),
                ],
              ),
            ),
//------------------------------------------------------------------------------
            SizedBox(height: 10,),

            Container(
              color: Colors.white,
              child: Row(
                children: [
                  Container(
                      height: 100,
                      width: 150,
                      color: Colors.deepOrange,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('pen drive',style: TextStyle(fontSize: 30,color: Colors.white),),
                        ],
                      )
                  ),

                  SizedBox(width: 14,),

                  Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Pendrive',style: TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(height: 5,),
                          Text('iPhone is the stylist phone ever',style: TextStyle(fontSize: 11),),
                          SizedBox(height: 5,),
                          Text('Price: 100',style: TextStyle(fontSize: 11),),
                        ],
                      )
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey[200],
    );
  }
}