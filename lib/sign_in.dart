import 'package:flutter/material.dart';
import 'package:sic_delivery/auth.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final Authentication _auth = Authentication();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        elevation: 0.0,
        title: Text("Sign in"),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: RaisedButton(
          child: Text('Sign in as inner'),
          onPressed: () async {
            dynamic result = await _auth.signIn();
            if (result == null) {
              print ("Error signing in");
            }
            else {
              print ("Signed in");
              print (result.uid);
            }
          })
      ),
    );
  }
}