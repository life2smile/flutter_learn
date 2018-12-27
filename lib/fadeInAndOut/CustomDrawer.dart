import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomDrawer extends StatelessWidget {
  final title = 'Custom Drawer';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CustomDrawerPage(title: title),
    );
  }
}

class CustomDrawerPage extends StatefulWidget {
  final title;

  CustomDrawerPage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return CustomDrawerPageState();
  }
}

class CustomDrawerPageState extends State<CustomDrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Text('My page'),
      ),
      drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text("Drawer header"),
            decoration: BoxDecoration(color: Colors.red),
          ),
          ListTile(
            title: Text('item 1'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('item 2'),
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      )),
    );
  }
}
