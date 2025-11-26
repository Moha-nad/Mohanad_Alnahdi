import 'package:flutter/material.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Profile',
            style: TextStyle(
              color: Color.fromARGB(255, 250, 245, 245),
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 124, 124, 124),
        ),

        body:
        Stack(children: [
          Container(
            width: double.infinity,

            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  color: Color.fromARGB(255, 231, 229, 229),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: Image.asset('images/class.png').image,
                      ),

                      Text(
                        'Mohanad Alnahdi',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),

                      Text('Devaloper', style: TextStyle(fontSize: 16)),
                    ],
                  ),
                ),

                Divider(),
                Container(
                  width: double.infinity,

                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Icon(Icons.email,color:Color.fromARGB(255, 124, 124, 124),),
                          ),
                          Text('fsykmklh@hnkkj.com  ')
                        ],
                      ),

                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Icon(Icons.phone,color:Color.fromARGB(255, 124, 124, 124),),
                          ),
                          Text('+97 864 568 321  ')
                        ],
                      ),
                    ],
                  ),
                ),

                Divider(),
                Container(
                  width: double.infinity,
                  color: Color.fromARGB(255, 231, 229, 229),

                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        color: Color.fromARGB(255, 124, 124, 124),
                        child: Text(
                          'Soft Skills:',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(' 1. Problem Solving.'),
                              Text(' 2. Logical and analytical thinking.'),
                              Text(' 3. Continuous learning.'),
                              Text(' 4. Time management.'),
                              Text(' 5. Attention to details.'),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                Divider(),
                Container(
                  width: double.infinity,
                  color: Color.fromARGB(255, 231, 229, 229),

                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        color: Color.fromARGB(255, 124, 124, 124),
                        child: Text(
                          'Hard Skills:',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                ' 1. Programming languages (Basic Knowledge):\n c++, java, html, css, javaScript, dart.',
                              ),
                              Text(' 2. Understanding Data Structures (Basic).'),
                              Text(' 3. Web development (Intermediate).'),
                              Text(
                                ' 4. object-oriented programming (OOP) (Intermediate).',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
        ),
      ),
    );
  }
}
