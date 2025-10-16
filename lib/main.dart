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
  String message = "البداية";
  int count = 0;

  void resetCount() {
    setState(() {
      message = "النهاية";
      count = 0;
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
              "$count",
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
                      count++;
                    });
                  },
                  child: Text(
                    "الله أكبر",
                    style: TextStyle(
                      color: Colors.brown,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.grey
                    ),
                  ),
                ),

                SizedBox(width: 14),

                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      message = "الحمد الله";
                      count++;
                    });
                  },
                  child: Text(
                    "الحمد الله",
                    style: TextStyle(
                      color: Colors.brown,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.grey
                    ),
                  ),
                ),

                SizedBox(width: 14),

                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      message = "سبحان الله";
                      count++;
                    });
                  },
                  child: Text(
                    "سبحان الله",
                    style: TextStyle(
                      color: Colors.brown,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.grey
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: resetCount,
              child: Text(
                "تصفير",
                style: TextStyle(
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.grey
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