import 'package:flutter/material.dart';

class Operation extends StatelessWidget {
  final int result1; 
  final int result2;

  Operation(this.result1, this.result2);
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Wrap(
      direction: Axis.vertical,
      alignment: WrapAlignment.end,
      crossAxisAlignment: WrapCrossAlignment.end,
      // crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Text(
          '13',
          style: TextStyle(fontSize: 76),
        ),
        Text(
          '+  7',
          style: TextStyle(fontSize: 76),
        ),
        Container(
          width: mediaQuery.size.width * 0.35,
          height: 3,
          color: Colors.black,
        ),
        Text(
          '${result2}${result1}',
          style: TextStyle(fontSize: 76),
        ),
      ],
    );
  }
}
