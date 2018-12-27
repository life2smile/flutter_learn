import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FadeInAndOutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String appTile = "Fade in and out Demo";
    return MaterialApp(
      title: appTile,
      home: FadeInAndOutPage(title: appTile),
    );
  }
}

class FadeInAndOutPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FadeInAndOutPageState();
  }

  final String title;

  FadeInAndOutPage({Key key, this.title}) :super(key: key);
}

class FadeInAndOutPageState extends State<FadeInAndOutPage> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: AnimatedOpacity(
            opacity: _visible ? 1.0 : 0.0,
            duration: Duration(milliseconds: 1000),
            child: Container(
              width: 200.0,
              height: 200.0,
              color: Colors.green,
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _visible = !_visible;
          });
        },
        child: Icon(Icons.flip),
      ),
    );
  }
}
