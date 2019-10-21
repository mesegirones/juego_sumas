import 'package:flutter/material.dart';
import '../widgets/options.dart';
import '../widgets/operation.dart';
import '../widgets/progress_bar.dart';

class OperationScreen extends StatefulWidget {
  static const routeName = './operation';

  @override
  _OperationScreenState createState() => _OperationScreenState();
}

class _OperationScreenState extends State<OperationScreen> {
  List<int> _results = [0, 0]; 

  int _result1 = 0;
  int _result2 = 0;

  void getResults(int value, int index) {
    setState(() {
     _result1 = value;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 30),
          ),
          ProgressBar(),
          Padding(
            padding: EdgeInsets.only(top: 50),
          ),
          Operation(_result1, _result2),
          Options(getResults),
        ],
      ),
    );
  }
}
