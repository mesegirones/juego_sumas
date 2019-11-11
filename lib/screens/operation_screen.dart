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
    final exData = Provider.of<Exercices>(context, listen: false);

    void nextStep() {
      var currentIndex = exData.getIndex();
      if (exData.exercices.length - 1 == currentIndex) {
        Navigator.of(context).pushReplacementNamed('./');
      } else {
        List<int> topNumber = exData.getNumbers(exId, 'top');
        List<int> bottomNumber = exData.getNumbers(exId, 'bottom');
        List<int> results = exData.getNumbers(exId, 'result');

        if (topNumber[0]  == results[0] && topNumber[1] + bottomNumber[0] == results[1]) {
          exData.increaseIndex();
          // print('WELL DONE');
        }
      }
    }

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
            child: Options(exId),
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
                nextStep();
              },
            ),
          )
        ],
      ),
    );
  }
}
