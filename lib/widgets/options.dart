import 'package:flutter/material.dart';

class Options extends StatelessWidget {
  final Function getResults; 

  Options(this.getResults);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 250,
      child: GridView.count(
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        crossAxisCount: 5,
        // Generate 100 widgets that display their index in the List.
        children: List.generate(10, (index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
            child: FlatButton(
              // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              shape: StadiumBorder(),
              color: Theme.of(context).primaryColor,
              padding: EdgeInsets.all(0),
              onPressed: () {
                getResults(index, 0);
              },
              child: Text(
                '$index',
              ),
            ),
          );
        }),
      ),
    );
  }
}
