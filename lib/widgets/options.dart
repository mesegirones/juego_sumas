import 'package:flutter/material.dart';

class Options extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView(
        children: <Widget>[
          FlatButton(
            onPressed: () {},
            child: Text('0'),
          ),
          FlatButton(
            onPressed: () {},
            child: Text('1'),
          ),
          FlatButton(
            onPressed: () {},
            child: Text('2'),
          ),
        ],
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          childAspectRatio: 1 / 1,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
      ),
    );
  }
}
