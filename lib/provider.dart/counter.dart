import 'package:flutter/material.dart';

class Counter with ChangeNotifier {
  int num = 0;
  int get number => num;

  increment() {
    num++;
    notifyListeners();
  }
}
