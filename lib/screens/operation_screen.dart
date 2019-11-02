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
  double step = 0; 

  String _levelId = 'level1';

  void _getResults(int value, int index) {
    setState(() {
     _results[1] = value;
    });
  }

  void _nextStep(){
    setState(() {
      _levelId = 'level2';
    });
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            child: ProgressBar(0.5),
            alignment: Alignment.center,
            height: mediaQuery.size.height * 0.15,
          ),
          Container(
            child: Operation(_levelId, _results),
            alignment: Alignment.center,
            height: mediaQuery.size.height * 0.45,
          ),
          Container(
            height: mediaQuery.size.height * 0.05,
          ),
          Container(
            child: Options(_getResults),
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
                _nextStep();
              },
            ),
          )
        ],
      ),
    );
  }
}
