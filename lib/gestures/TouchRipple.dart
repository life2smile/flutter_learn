import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TouchRipple extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TouchRipplePage(),
    );
  }
}

class TouchRipplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Touch Ripple"),
      ),
      body: Center(
        child: TouchRippleWidget(),
      ),
    );
  }
}

class TouchRippleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.all(12.0),
        child: Text('Flat Button'),
      ),
      onTap: () {
        Scaffold.of(context).showSnackBar(SnackBar(content: Text("tap me")));
      },
    );
  }
}
