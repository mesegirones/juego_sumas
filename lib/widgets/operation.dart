import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/exercices.dart';

class Operation extends StatelessWidget {
  final String exerciceId;

  Operation(this.exerciceId);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    final exerciceData = Provider.of<Exercices>(context,listen: false).getCurrentExercice(exerciceId); // TODO: change to GetNumbers() 
    final updateResult = Provider.of<Exercices>(context);

    final resultController1 = TextEditingController();
    final resultController0 = TextEditingController();

    resultController1.text = exerciceData.result[1].toString();
    resultController0.text = exerciceData.result[0].toString();

    Widget getText(numbers, isBottom) {
      String newNumber = '';
      if (isBottom) {
        newNumber = '+  ';
      }
      numbers.forEach(
        (n) => newNumber = '$newNumber$n',
      );
      return Text(
        newNumber,
        style: TextStyle(fontSize: 76),
      );
    }

    return Wrap(
      direction: Axis.vertical,
      alignment: WrapAlignment.end,
      crossAxisAlignment: WrapCrossAlignment.end,
      // crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        getText(exerciceData.topNumber, false),
        getText(exerciceData.bottomNumber, true),
        Container(
          width: mediaQuery.size.width * 0.35,
          height: 3,
          color: Colors.black,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              height: 85,
              width: mediaQuery.size.width * 0.11,
              margin: EdgeInsets.only(top: 5),
              child: TextField(
                controller: resultController0,
                focusNode: AlwaysDisabledFocusNode(),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.00),
                  ),
                ),
                style: TextStyle(fontSize: 35),
                 onChanged: (value) {
                  updateResult.insertResult(exerciceId, int.parse(value), 1);
                },
              ),
            ),
            Container(
              height: 85,
              width: mediaQuery.size.width * 0.11,
              margin: EdgeInsets.only(left: 5, top: 5),
              child: TextField(
                controller: resultController1,
                focusNode: AlwaysDisabledFocusNode(),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.00),
                  ),
                ),
                style: TextStyle(fontSize: 35),
                onChanged: (value) {
                  updateResult.insertResult(exerciceId, int.parse(value), 0);
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}
