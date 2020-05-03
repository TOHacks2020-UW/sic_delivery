import 'package:flutter/material.dart';
import 'auth.dart';
import 'package:sic_delivery/addList.dart';

class Home extends StatelessWidget {
  final Authentication _auth = Authentication();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Add Nancys home screen design
      appBar: AppBar(
        backgroundColor: Colors.green[400],
        elevation: 0.0,
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.person),
            label: Text("logout"),
            onPressed: () async {
              await _auth.signOut();
            },
          )
        ],
      ),
      body: Center(
        child: AddList(),
      ),
    );
  }
}
