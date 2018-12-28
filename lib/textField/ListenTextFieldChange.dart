import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListenTextFieldChange extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TextFieldChange(),
    );
  }
}

class TextFieldChange extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TextFieldChangeState();
  }
}

class TextFieldChangeState extends State<TextFieldChange> {
  final controller = TextEditingController();

  _printLatestValue(){
    print("second text field: ${controller.text}" );
  }

  @override
  void initState() {
    super.initState();
    controller.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text changed'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              onChanged: (text){
                print("first TextField: $text");
              },
            ),
            TextField(
              controller: controller,
            )
          ],
        ),
      ),
    );
  }
}
