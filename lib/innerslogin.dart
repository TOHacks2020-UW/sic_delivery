import 'package:flutter/material.dart';
import 'package:sic_delivery/register.dart';
import 'package:sic_delivery/sign_in.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Register(),
    );
  }
}