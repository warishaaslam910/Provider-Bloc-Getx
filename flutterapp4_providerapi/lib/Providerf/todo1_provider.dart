import 'package:flutter/material.dart';
import 'package:flutterapp4_providerapi/model/model1.dart';
import 'package:flutterapp4_providerapi/services/Services1.dart';

class todo1_provider extends ChangeNotifier {
  final _sevice1 = Services1();
  bool isloading = false;
  List<model1> _todos = [];
  List<model1> get todos => _todos;
  Future<void> getall() async {
    isloading = true;
    notifyListeners();
    final response = await _sevice1.getallapi();
    _todos = response;
    notifyListeners();
    isloading = false;
  }
}
