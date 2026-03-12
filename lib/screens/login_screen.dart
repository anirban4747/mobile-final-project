import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'signup_screen.dart';

class LoginScreen extends StatefulWidget {

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final email = TextEditingController();
  final password = TextEditingController();

  String error = "";

  void login(){

    if(email.text != "test@test.com" || password.text != "123456"){
      setState(() {
        error = "Invalid login";
      });
      return;
    }

    Navigator.push(context,
        MaterialPageRoute(builder: (context)=>HomeScreen())
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [

            TextField(controller: email, decoration: InputDecoration(labelText: "Email")),
            TextField(controller: password, decoration: InputDecoration(labelText: "Password")),

            SizedBox(height:20),

            ElevatedButton(
                onPressed: login,
                child: Text("Login")
            ),

            Text(error, style: TextStyle(color: Colors.red)),

            TextButton(
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>SignupScreen()));
                },
                child: Text("Sign Up")
            )
          ],
        ),
      ),
    );
  }
}