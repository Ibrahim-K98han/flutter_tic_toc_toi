import 'package:flutter/material.dart';

enum Turn{
  PlayerOne, PlayerTwo
}
class GameProvider with ChangeNotifier{
  Turn turn = Turn.PlayerOne;
  int position = 1;
  int _scoreOne = 0;
  int _scoreTwo = 0;
  String _mark = '';
  bool _first = true;
  bool _hasEnded = false;
  String _status = '';
  int moves = 0;
  var winingCombination = [];
  var _checkList = [
    '','','',
    '','','',
    '','','',
  ];
  int get playerOneScore => _scoreOne;
  int get playerTwoScore => _scoreTwo;
  String get mark => _mark;
  bool get inFirst => _first;
  bool get isEnd => _hasEnded;
  String get result => _status;
  List<String> get cList => _checkList;
}