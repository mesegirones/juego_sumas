import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/level.dart';

class Operation extends StatelessWidget {
  final String levelId;
  final List<int> results;

  Operation(this.levelId, this.results);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    final levelData = Provider.of<Levels>(context).getCurrentLevel(levelId);

    print(levelData.id);

    Widget getText(numbers, isBottom) {
      String newNumber = '';
      if(isBottom){
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
        getText(levelData.topNumber, false),
       getText(levelData.bottomNumber, true),
        Container(
          width: mediaQuery.size.width * 0.35,
          height: 3,
          color: Colors.black,
        ),
        Text(
          '${results[0]}${results[1]}',
          style: TextStyle(fontSize: 76),
        ),
      ],
    );
  }
}
