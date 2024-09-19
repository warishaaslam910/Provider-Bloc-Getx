import 'package:fluterapp5_apiprovider/Services.dart';
import 'package:fluterapp5_apiprovider/model.dart';
import 'package:flutter/material.dart';

class todo_provider extends ChangeNotifier {
  final _service = Services();
  bool isloading = false;
  List<model> _todos = [];
  List<model> get todos => _todos;
  Future<void> getall() async {
    isloading = true;
    notifyListeners();
    final response = await _service.getallapi();
    _todos = response;
    notifyListeners();
    isloading = false;
  }
}
