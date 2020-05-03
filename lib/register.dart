import 'package:flutter/material.dart';
import 'auth.dart';

class Register extends StatefulWidget {
  
  final Function toggleView;
  Register({this.toggleView});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final Authentication _auth = Authentication();

  String email = '';
  String password = '';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        elevation: 0.0,
        title: Text("Sign up"),
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.person),
            label: Text("Sign in"),
            onPressed: (){
              widget.toggleView();
            }
            )
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
          child: Column(
          children: <Widget>[
            SizedBox(height:20.0),
            TextFormField(
              onChanged: (val){
                setState(() => email = val);
              }
              ),
              SizedBox(height:20.0),
              TextFormField(
                obscureText: true,
                onChanged: (val){
                  setState(() => password = val);
                }
                ),
                SizedBox(height: 20.0),
                RaisedButton(
                  color: Colors.pink[400],
                  child: Text(
                    'Sign up',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () async{
                    print(email);
                    print(password);
                  }
                )
          ],
          ),
      ),
    ),
    );
  }
}