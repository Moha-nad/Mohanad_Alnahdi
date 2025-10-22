import 'package:flutter/material.dart';

void main() {
  runApp(const MohanadApp());
}

class MohanadApp extends StatelessWidget {
  const MohanadApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MohanadPage());
  }
}

class MohanadPage extends StatefulWidget {
  @override
  MohanadAppState createState() => MohanadAppState();
}

class MohanadAppState extends State<MohanadPage> {
  String message = "بسم الله الرحمن الرحيم";

  int counter = 0;
  int count = 0;
  int count2 = 0;
  int count3 = 0;

  void resetCount() {
    setState(() {
      message = "إعادة";
      counter = 0;
      count = 0;
      count2 = 0;
      count3 = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "السبحة الالكترونية",
          style: TextStyle(color: Colors.brown, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 250, 214, 105),
      ),

      body: Center(
        child: Column(
          children: [
            SizedBox(height: 230),

            Text(
              message,
              style: TextStyle(
                color: Colors.brown,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),

            Text(
              "$counter",
              style: TextStyle(
                color: Colors.brown,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),

            Row(
              children: [

                SizedBox(width: 25),
                
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      message = "الله أكبر";
                      counter = ++count;
                    });
                  },

                  child: Text(
                    "الله أكبر",
                    style: TextStyle(
                      color: Colors.brown,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                SizedBox(width: 14),

                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      message = "الحمد الله";
                      counter = ++count2;
                    });
                  },
                  child: Text(
                    "الحمد الله",
                    style: TextStyle(
                      color: Colors.brown,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                SizedBox(width: 14),

                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      message = "سبحان الله";
                      counter = ++count3;
                    });
                  },
                  child: Text(
                    "سبحان الله",
                    style: TextStyle(
                      color: Colors.brown,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: resetCount,
              child: Text(
                "إعادة",
                style: TextStyle(
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 238, 208, 119),
    );
  }
}