import 'package:flutter/material.dart';
import '../widgets/options.dart';
import '../widgets/operation.dart';
import '../widgets/progress_bar.dart';

class OperationScreen extends StatelessWidget {
  static const routeName = './operation';

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
          Operation(),
        ],
      ),
    );
  }
}
