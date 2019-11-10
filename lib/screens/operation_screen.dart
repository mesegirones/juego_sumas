import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/exercices.dart';
import '../widgets/options.dart';
import '../widgets/operation.dart';
import '../widgets/progress_bar.dart';

class OperationScreen extends StatelessWidget {
  static const routeName = './operation';
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final exId = Provider.of<Exercices>(context).getExId();
    final nextId = Provider.of<Exercices>(context, listen: false);

    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            child: ProgressBar(exId),
            alignment: Alignment.center,
            height: mediaQuery.size.height * 0.15,
          ),
          Container(
            child: Operation(exId),
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
               nextId.increaseIndex();
              },
            ),
          )
        ],
      ),
    );
  }
}
