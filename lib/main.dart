import 'package:flutter/material.dart';
import './widgets/progress_bar.dart';
import './widgets/operation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            ProgressBar(),
            Operation(),
          ],
        ),
      ),
    );
  }
}
