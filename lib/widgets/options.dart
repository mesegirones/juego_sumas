import 'package:flutter/material.dart';

class Options extends StatelessWidget {
  final Function getResults; 

  Options(this.getResults);
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 5,
      mainAxisSpacing: 10,
      crossAxisSpacing: 7,
      children: List.generate(10, (index) {
        return Container(
          height: 50,
          width: 60,
          child: FlatButton(
          shape: StadiumBorder(),
          color: Colors.blue[200],
          textColor: Colors.white,
          onPressed: () {
            getResults(index, 0);
          },
          child: Text(
            '$index',
            style: TextStyle(fontSize: 24),
          ),
          ),
        );
      }),
    );
  }
}
