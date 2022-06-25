import 'package:flutter/material.dart';

class WorkoutFragment extends StatefulWidget {
  _WorkoutState createState() => _WorkoutState();
}

class _WorkoutState extends State<WorkoutFragment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            child: Text('+'), onPressed: () => print('pressed')),
        body: Column(
          children: <Widget>[
            Card(
                child: ListTile(
              title: Text('abc'),
            )),
          ],
        ));
  }
}
