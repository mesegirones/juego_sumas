import 'package:flutter/material.dart';

class Operation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                      bottom: 7,
                      right: 10,
                    ),
                    child: Text(
                      '+',
                      style: TextStyle(fontSize: 45),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    '88',
                    style: TextStyle(fontSize: 76),
                  ),
                  Text(
                    '88',
                    style: TextStyle(fontSize: 76),
                  ),
                ],
              ),
            ],
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
          FittedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    '-',
                    style: TextStyle(fontSize: 50),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    '-',
                    style: TextStyle(fontSize: 50),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
