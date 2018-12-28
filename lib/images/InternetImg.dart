import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InternetImg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Internet Img'),
        ),
        body: Image.network(
            "https://github.com/flutter/website/blob/master/src/_includes/code/layout/lakes/images/lake.jpg?raw=true"),
      ),
    );
  }
}
