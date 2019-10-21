import 'package:flutter/material.dart';

class Operation extends StatelessWidget {
  final int result1; 
  final int result2;

  Operation(this.result1, this.result2);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
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
          width: 150,
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 3,
                color: Colors.black,
              ),
            ),
          ),
        ),
        Text(
          '${result2}${result1}',
          style: TextStyle(fontSize: 76),
        ),
      ],
    );
  }
}
