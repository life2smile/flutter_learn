import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OrientationDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Orientation Demo'),
        ),
        body: OrientationPage(),
      ),
    );
  }
}

class OrientationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new OrientationPageState();
  }
}

class OrientationPageState extends State<OrientationPage> {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        return GridView.count(
          crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
          children: List.generate(100, (index) {
            return Center(
              child: Text('Item $index',
                  style: Theme.of(context).textTheme.headline),
            );
          }),
        );
      },
    );
  }
}
