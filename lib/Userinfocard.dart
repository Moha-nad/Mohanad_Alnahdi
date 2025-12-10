import 'package:flutter/material.dart';
import 'Likebutton.dart';
import 'Savebutton.dart';

class Userinfocard extends StatelessWidget {
  final String name;
  final String email;
  final String role;

  Userinfocard({
    super.key,
    required this.name,
    required this.email,
    required this.role,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
          margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: [

                Icon(Icons.person, size: 40),

                SizedBox(width: 16),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(name,style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,),),
                    Text(email),
                    Text(role,style: TextStyle(color: Colors.grey),),
                  ],
                ),

                SizedBox(width: 60,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Likebutton(),
                    Savebutton(),
                  ],
                )
              ],
            ),
          ),
        ),
      );
  }
}