import 'package:flutter/material.dart';
import 'package:flutter_multiple_themes/theme/multiple_theme_color.dart';

import 'color_theme_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });

    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const ColorThemePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ThemeColor.backgroundMain2,
        title: Text(
          'flutter_multiple_themes',
          style: TextStyle(
            color: ThemeColor.textIcon1,
            fontSize: 16,
          ),
        ),
      ),
      body: Container(
        color: ThemeColor.backgroundMain2,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
                style: TextStyle(
                  color: ThemeColor.textIcon1,
                  fontSize: 16,
                ),
              ),
              Text(
                '$_counter',
                style: TextStyle(
                  color: ThemeColor.textIcon1,
                  fontSize: 24,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        backgroundColor: ThemeColor.brand04Green,
        child: Icon(
          Icons.add,
          color: ThemeColor.brand01Black,
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
