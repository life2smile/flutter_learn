import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomSnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Custom SnackBar",
        home: Scaffold(
          appBar: AppBar(
            title: Text('Snack Bar'),
          ),
          body: CustomSnackBarPage(),
        ));
  }
}

class CustomSnackBarPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CustomSnackBarPageState();
  }
}

class CustomSnackBarPageState extends State<CustomSnackBarPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text('Show SnackBar'),
        onPressed: (){
          final snackBar = SnackBar(
            content: Text('I am a SnackBar'),
            action: SnackBarAction(label: "Undo", onPressed: (){
              print("un do");
            }),
          );
          Scaffold.of(context).showSnackBar(snackBar);
        },
      ),
    );
  }
}
