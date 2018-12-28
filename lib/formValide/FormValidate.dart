import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FormValidateApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Form Validate")),
        body: FormValidate(),
      ),
    );
  }
}

class FormValidate extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormValidateState();
  }
}

class FormValidateState extends State<FormValidate> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please Enter some text';
                }
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: RaisedButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    Scaffold.of(context)
                        .showSnackBar(SnackBar(content: Text("Processing Data")));
                  }
                },
                child: Text('Submit'),
              ),
            )
          ],
        ));
  }
}
