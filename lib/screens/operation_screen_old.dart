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
  int _exIndex = 1;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            child: ProgressBar('ex1'),
            alignment: Alignment.center,
            height: mediaQuery.size.height * 0.15,
          ),
          Container(
            child: Operation('ex1'),
            alignment: Alignment.center,
            height: mediaQuery.size.height * 0.45,
          ),
          Container(
            height: mediaQuery.size.height * 0.05,
          ),
          Container(
            child: Options(),
            height: mediaQuery.size.height * 0.25,
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.symmetric(horizontal: 15),
          ),
          Container(
            height: mediaQuery.size.height * 0.1,
            padding: EdgeInsets.all(15),
            child: FlatButton(
              color: Colors.green[200],
              shape: StadiumBorder(),
              child: Text('Submit'),
              onPressed: () {
                // _nextStep();
              },
            ),
          )
        ],
      ),
    );
  }
}
