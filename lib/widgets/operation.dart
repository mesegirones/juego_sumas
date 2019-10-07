import 'package:flutter/material.dart';

class Operation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
       decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 3,
                        color: Colors.black,
                      ),
                    ),
                  ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text(
            '+',
            style: TextStyle(fontSize: 45),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 15,
              top: 55,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  '13',
                  style: TextStyle(fontSize: 76),
                ),
                Text(
                  '4',
                  style: TextStyle(fontSize: 76),
                ),
              ],
            ),
          ),
        
        ],
      ),
    );
  }
}
