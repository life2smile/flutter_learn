import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(length: 3,
          child: Scaffold(
            appBar: AppBar(
              bottom: TabBar(tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_bike)),
                Tab(icon: Icon(Icons.directions_boat)),
              ]),
              title: Text("My Tabs"),
            ),
            body: TabBarView(children: [
              Icon(Icons.directions_car),
              Icon(Icons.directions_bike),
              Icon(Icons.directions_boat)
            ]),
          )),
    );
  }
}
