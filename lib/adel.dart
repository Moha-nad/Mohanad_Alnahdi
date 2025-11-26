import 'package:flutter/material.dart';

void main() {
  runApp(const Adel_App());
}

class Adel_App extends StatelessWidget {
  const Adel_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Adel_Page());
  }
}

class Adel_Page extends StatefulWidget {
  @override
  AdelAppState createState() => AdelAppState();
}

class AdelAppState extends State<Adel_Page> {
  GlobalKey<FormState> formstate = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.search),
        title: Text("ASB Store"),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
        elevation: 20.0,
        actions: [],
      ),
      drawer: Drawer(
          child: Container(
            child: ListView(
              children:[
                Row(
                    children: [
                      Container(
                        width: 60,
                        height: 40,
                        child: Image.asset("images/p1.jpg", fit: BoxFit.cover),
                      ),
                      Expanded(
                        child: ListTile(
                          title: Text("Adel Bakahil"),
                          subtitle: Text("Mobile and Web Devoloper"),
                          onTap: () {
                            print("Good");
                          },
                        ),
                      ),
                    ],
                  ),

                   Expanded(
                  child: ListTile(
                    title: Text("Home"),
                    subtitle: Icon(Icons.home),
                    onTap: () {
                      print("Good");
                    },
                  ),
                ),

                 Expanded(
                  child: ListTile(
                    title: Text("Home"),
                    subtitle: Icon(Icons.home),
                    onTap: () {
                      print("Good");
                    },
                  ),
                ),

                 Expanded(
                  child: ListTile(
                    title: Text("Home"),
                    subtitle: Icon(Icons.home),
                    onTap: () {
                      print("Good");
                    },
                  ),
                ),
                  ],

              
                ),

              
                

               
              
            
          ),
        
      ),

      body: Center(
        child: Container(
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(10),
          height: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.cyan,
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                spreadRadius: 2,
                blurRadius: 7,
                offset: Offset(0, 0),
              ),
            ],
          ),
          child: Form(
            key: formstate,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Sign up", style: TextStyle(fontWeight: FontWeight.bold)),

                Container(
                  width: 200,
                  height: 70,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "username",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.green),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    validator: (value) {
                      if (value!.length > 5 && value!.length < 15) {
                        return "الادخال يتم بنجاح";
                      } else {
                        return "خطأ في الادخال ";
                      }
                    },
                  ),
                ),

                Container(
                  width: 200,
                  height: 70,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "username",
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(color: Colors.green),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    validator: (value) {
                      if (value!.length > 5 && value!.length < 15) {
                        return "الادخال يتم بنجاح";
                      } else if (value!.length < 5 && value!.length > 15) {
                        return "خطأ في الادخال ";
                      } else if (value!.isEmpty) {
                        return "الحقل فارغ";
                      }
                    },
                    obscureText: true,
                  ),
                ),
                MaterialButton(
                  color: Colors.red,
                  child: Text("Check"),
                  onPressed: () {
                    formstate.currentState!.validate();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
