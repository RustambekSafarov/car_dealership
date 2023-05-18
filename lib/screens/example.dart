import 'package:flutter/material.dart';

import 'package:awesome_icons/awesome_icons.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    List<String> keys = fontAwesomeIcons.keys.toList();

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return IconCard(
            icon: keys[index],
          );
        },
        itemCount: keys.length,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class IconCard extends StatelessWidget {
  final String icon;

  const IconCard({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            fontAwesomeIcons[icon],
            size: 24.0,
          ),
          const SizedBox(height: 30.0),
          Text(icon)
        ],
      ),
    );
  }
}
