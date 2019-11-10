import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/exercices.dart';

class Options extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
     final updateResult = Provider.of<Exercices>(context, listen: false);

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
            updateResult.insertResult('ex1', index, 1);
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
