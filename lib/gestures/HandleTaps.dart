import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HandleTaps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Handle Taps')),
        body: Center(child:CustomBtn()),
      ),
    );
  }
}

class CustomBtn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackBar = SnackBar(
          content: Text("tap"),
        );
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: Container(
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
            color: Theme.of(context).buttonColor,
            borderRadius: BorderRadius.circular(8.0)),
        child: Text('My Button'),

      ),
    );
  }
}
