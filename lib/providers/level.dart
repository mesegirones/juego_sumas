import 'package:flutter/material.dart';

class Level {
  final String color;
  final String id;
  final List<int> topNumber;
  final List<int> bottomNumber;

  Level({
    @required this.color,
    @required this.id,
    @required this.topNumber,
    @required this.bottomNumber,
  });
}

class Levels with ChangeNotifier {
  List<Level> _levels = [
    Level(
      color: 'ffffff',
      id: 'level1',
      topNumber: [1, 3],
      bottomNumber: [3],
    ),
    Level(
      color: 'ffff55',
      id: 'level2',
      topNumber: [1, 1],
      bottomNumber: [8],
    ),
  ];

  List<Level> get levels {
    return [..._levels];
  }

  Level getCurrentLevel(String levelId){
   return _levels.firstWhere((l) => l.id == levelId); 
  }
}
