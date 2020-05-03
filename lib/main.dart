import 'package:flutter/material.dart';
import 'package:sic_delivery/auth.dart';
import 'package:sic_delivery/wrapper.dart';
import 'package:provider/provider.dart';
import 'user.dart';
import 'package:sic_delivery/innershome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: Authentication().user,
      child: MaterialApp(
        home: Home(),
      ),
    );
  }
}

