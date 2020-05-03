import 'package:flutter/material.dart';
import 'auth.dart';

class Home extends StatelessWidget {

  final Authentication _auth = Authentication();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.green[50],
      // Add Nancys home screen design
      appBar: AppBar(
        actions: <Widget>[
        FlatButton.icon(
          icon: Icon(Icons.person),
          label: Text("logout"),
          onPressed: () async {
            await _auth.signOut();
        },
        )
      ],
      )    
    );
  }
}