import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FocusTextField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextFiled focus',
      home: FocusTextFieldPage(),
    );
  }
}

class FocusTextFieldPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FocusTextFieldPageState();
  }
}

class FocusTextFieldPageState extends State<FocusTextFieldPage> {
  FocusNode focusNode;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    focusNode = FocusNode();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    focusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text filed focus'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(autofocus: true),
            TextField(focusNode: focusNode),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => FocusScope.of(context).requestFocus(focusNode),
          tooltip: 'Focus sencond Text Field',
          child: Icon(Icons.edit)),
    );
  }
}
