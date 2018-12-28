import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwipeToDismiss extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Swipe to Dismiss'),
        ),
        body: SwipeToDismissPage(),
      ),
    );
  }
}

class SwipeToDismissPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SwipeToDismissPageState();
  }
}

class SwipeToDismissPageState extends State<SwipeToDismissPage> {
  final list = List<String>.generate(100, (i) => "Item ${++i}");

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          final item = list[index];
          return Dismissible(
              key: Key(item),
              background: Container(color: Colors.red),
              onDismissed: (direction){
                setState(() {
                  list.removeAt(index);
                });
                Scaffold.of(context).showSnackBar(SnackBar(content: Text('$item dismissed')));
              },
              child:ListTile(title: Text('$item'),) );
        });
  }
}
