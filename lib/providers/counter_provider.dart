import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _counter = 15;

  //saber el valor actual
  get counter {
    return this._counter;
  }

  void increment() {
    this._counter++;
    //redibujar los cambios
    notifyListeners();
  }

  void decrement() {
    this._counter--;
    notifyListeners();
  }
}
