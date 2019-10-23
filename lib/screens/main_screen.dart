import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/level.dart';

class MainScreen extends StatelessWidget {
  static const routName = './';

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final levelsData = Provider.of<Levels>(context);
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(5),
          alignment: Alignment.center,
          width: mediaQuery.size.width * 0.45,
          child: ListView.builder(
            itemCount: levelsData.levels.length,
            itemBuilder: (ctx, i) => Container(
              height: 150,
              width: 95,
              margin: EdgeInsets.all(15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(150),
                child: FlatButton(
                  child: Text(levelsData.levels[i].id),
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('./operation');
                  },
                  color: Colors.blue[200],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
