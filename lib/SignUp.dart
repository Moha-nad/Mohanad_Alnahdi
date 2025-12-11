import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'LoginPage.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();


  Future<void> _signUp() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('username', _usernameController.text);
      await prefs.setString('email', _emailController.text);
      await prefs.setString('password', _passwordController.text);

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Loginpage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),

      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Container(
            padding: EdgeInsets.all(16.0),
            width: 300,
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Username',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your Username';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _usernameController.text = value!;
                    },
                  ),
//------------------------------------------------------------------------------
                  SizedBox(height: 10,),

                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      } else if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value!)) {
                        return 'Please enter a valid email address';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _emailController.text = value!;
                    },
                  ),
//------------------------------------------------------------------------------
                  SizedBox(height: 10,),

                  TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    obscureText: true,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      else if (value!.length<8) {
                        return ' password should be at least 8 chars';
                      }else if (!RegExp("[a-z]").hasMatch(value!)) {
                        return ' password should at least one lowercase chars';
                      }else if (!RegExp("[A-Z]").hasMatch(value!)) {
                        return ' password should at least one uppercase chars';
                      }else if (!RegExp("[!#\$%&'*+-/=?^_`{|}~@]").hasMatch(value!)) {
                        return ' password should at least one symbol';
                      }else if (!RegExp("[0-9]").hasMatch(value!)) {
                        return ' password should at least one number';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _passwordController.text = value!;
                    },
                  ),
//------------------------------------------------------------------------------
                  SizedBox(height: 20,),

                  ElevatedButton(
                    onPressed: _signUp,
                    child: Text('Sign Up',style: TextStyle(color: Colors.white),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
