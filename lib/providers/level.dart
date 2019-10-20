import 'package:flutter/material.dart';

class Level {
  final String color;
  final String id;

  Level({
    @required this.color,
    @required this.id,
  });
}

class Levels with ChangeNotifier {
  List<Level> _levels = [
    Level(
      color: 'ffffff',
      id: 'level1',
    ),
    Level(
      color: 'ffff55',
      id: 'level2',
    ),
  ];

  List<Level> get levels {
    return [..._levels];
  }
}
