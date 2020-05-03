import 'package:flutter/material.dart';
import 'package:sic_delivery/register.dart';
import 'package:sic_delivery/sign_in.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  bool signIn = true;
  void toggleView(){
    setState(() => signIn = !signIn);
  }

  @override
  Widget build(BuildContext context) {
    if(signIn){
      return SignIn(toggleView: toggleView);
    }
    else {
      return Register(toggleView: toggleView);
    }
  }
}