import 'package:flutter/material.dart';

void main() {
  runApp(OneApp());
}

class OneApp extends StatelessWidget {
  void nameChosen() {
    print('Name is chosen!');
  }

  var listOfNames = ['Sourendra', 'Souradip', 'Srinika'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('App Bar'),
        ),
        body: Column(
          children: <Widget>[
            Text('list of buttons'),
            ElevatedButton(
              onPressed: nameChosen,
              child: Text(
                'Name 1',
                style: TextStyle(color: Color(0xFFFFFFFF)),
              ),
            ),
            RaisedButton(
              onPressed: () => print('Name 2 chosen'),
              child: Text('Name 2'),
            ),
            RaisedButton(
              onPressed: () {
                print('Name 3 chosen');
              },
              child: Text('Name 3'),
            ),
          ],
        ),
      ),
    );
  }
}
