import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Theme"),
        ),
        body: MyThemePage(),
        floatingActionButton: Theme(
          data: Theme.of(context).copyWith(accentColor: Colors.yellow),
          child: FloatingActionButton(onPressed: null,child: Icon(Icons.add)),
            ),
      ),
      theme: ThemeData(
        primaryColor: Colors.red,
        brightness: Brightness.light,
        accentColor: Colors.green,
        textTheme: TextTheme(
          headline: TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
          title: TextStyle(fontSize: 36, fontStyle: FontStyle.italic),
          body1: TextStyle(fontSize: 14, fontFamily: 'Hind')
        )
      ),
    );
  }
}

class MyThemePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyThemePageState();
  }
}

class MyThemePageState extends State<MyThemePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Theme.of(context).accentColor,
        child: Text('Text with a background color',
        style: Theme.of(context).textTheme.title),
      ),
    );
  }
}
