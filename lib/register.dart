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
  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  String error ='';
  
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
          key: _formKey,
          child: Column(
          children: <Widget>[
            SizedBox(height:20.0),
            TextFormField(
              validator: (val) => val.isEmpty ? 'Enter an email' : null,
              onChanged: (val){
                setState(() => email = val);
              }
              ),
              SizedBox(height:20.0),
              TextFormField(
                obscureText: true,
                validator: (val) => val.isEmpty ? 'Enter a password' : null,
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
                    if(_formKey.currentState.validate()){
                      dynamic result = await _auth.register(email, password);
                      if (result == null){
                        setState(() => error = 'please type in a valid email');
                      }
                    }
                  }
                ),
                SizedBox(height: 12.0),
                Text(
                  error,
                  style: TextStyle(color: Colors.red, fontSize: 14.0),
                ),
          ],
          ),
      ),
    ),
    );
  }
}