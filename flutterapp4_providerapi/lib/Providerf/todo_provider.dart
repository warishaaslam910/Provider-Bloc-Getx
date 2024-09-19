// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:flutterapp4_providerapi/model/model.dart';
// import 'package:flutterapp4_providerapi/services/services.dart';

// class todo_provider extends ChangeNotifier {
//   final _service = Services();
//   bool isLoading = false;
//   List<model> _todos = [];
//   List<model> get todos => _todos;
//   Future<void> getAllTodos() async {
//     isLoading = true;
//     notifyListeners();
//     final response = await _service.getAll();
//     _todos = response;
//     isLoading = false;
//     notifyListeners();
//   }
// }
