import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AddList extends StatelessWidget {
  AddList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Enter your list',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontFamily: 'roboto', //'Comfortaa',
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
                color: Colors.black,
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                  labelText:
                      'eg. 1 romaine cabbage, 3 bananas, 24 large brown eggs, 12 roll toilet paper'),
            ),
            SizedBox(height: 20),
            Text(
              '-OR-',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'roboto',
                fontWeight: FontWeight.w900,
                fontSize: 13,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.only(left: 70, right: 70),
              child: FlatButton(
                onPressed: () {},
                color: Colors.orange[400],
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'UPLOAD A PICTURE',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'roboto',
                      fontWeight: FontWeight.w900,
                      fontSize: 13,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
