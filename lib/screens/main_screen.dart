import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/level.dart';

class MainScreen extends StatelessWidget {
  static const routName = './';

  @override
  Widget build(BuildContext context) {
    final levelsData = Provider.of<Levels>(context);
    return Scaffold(
      body: Container(
        child: ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 15),
          itemCount: levelsData.levels.length,
          itemBuilder: (ctx, i) => ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 50,
              margin: EdgeInsets.all(20),
              child: FlatButton(
                child: Text(levelsData.levels[i].id),
                onPressed: (){
                  Navigator.of(context).pushReplacementNamed('./operation');
                },
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
