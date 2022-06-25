import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Spinner extends StatelessWidget {
  final String topMessage;
  final String bottomMessage;

  Spinner(this.topMessage, this.bottomMessage);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(this.topMessage),
        Container(
          height: 100,
          width: 100,
          margin: EdgeInsets.all(10),
          child:CircularProgressIndicator(strokeWidth: 7,)
          ), 
        Text(this.bottomMessage)],
    ));
  }
}
