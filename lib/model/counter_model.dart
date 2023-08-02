import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CounterDemo extends ChangeNotifier {

  int _counter = 0;

  int get counter => _counter;

  CounterDemo() {
    loadCounter();
  }

  loadCounter() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    _counter = prefs.getInt('counter') ?? 0;
    notifyListeners();
  }



  Future<void> increment() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    _counter++;
    prefs.setInt('counter', _counter);
    notifyListeners();
  }

  Future<void> decrement() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    // _counter value is greater than 0
    _counter > 0
        ? _counter--
        : Fluttertoast.showToast(msg: 'Negative value will not count');

    prefs.setInt('counter', _counter);
    notifyListeners();
  }

  void reset() {
    _counter = 0;
    notifyListeners();
  }

}
