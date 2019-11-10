import 'package:flutter/material.dart';

class Exercice {
  final String id;
  final List<int> topNumber;
  final List<int> bottomNumber;
  final List<int> result;

  Exercice({
    @required this.id,
    @required this.topNumber,
    @required this.bottomNumber,
    this.result,
  });
}

class Exercices with ChangeNotifier {
  List<Exercice> _exercices = [
    Exercice(
      id: 'ex1',
      topNumber: [1, 3],
      bottomNumber: [3],
      result: [0, 0],
    ),
    Exercice(
      id: 'ex2',
      topNumber: [1, 1],
      bottomNumber: [8],
      result: [0, 0],
    ),
    Exercice(
      id: 'ex3',
      topNumber: [1, 2],
      bottomNumber: [2],
      result: [0, 0],
    ),
  ];

  int _exIndex = 0;

  List<Exercice> get levels {
    return [..._exercices];
  }

  Exercice getCurrentExercice(String exId) {
    return _exercices.firstWhere((l) => l.id == exId);
  }

  double getProgress(String currentId) {
    var index = _exercices.indexWhere((e) => e.id == currentId);
    var progress = index / _exercices.length;
    return progress;
  }

  List<int> getNumbers(String currentId, String type) {
    var index = _exercices.indexWhere((e) => e.id == currentId);
    var number = _exercices.elementAt(index);

    if (type == 'top') {
      return number.topNumber;
    } else if (type == 'bottom') {
      return number.bottomNumber;
    }
  }

  void insertResult(String currentId, int newNumber, int resultIndex) {
    var index = _exercices.indexWhere((e) => e.id == currentId);
    _exercices.elementAt(index).result.insert(resultIndex, newNumber);
    notifyListeners();
  }

  String getExId() {
    // print(_exercices.elementAt(exIndex).id);
    return _exercices.elementAt(_exIndex).id;
  }

  void increaseIndex(){
    if(_exIndex < _exercices.length-1) _exIndex++;
    print(_exIndex);
    notifyListeners();
  }
}
